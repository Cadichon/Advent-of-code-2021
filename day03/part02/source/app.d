import std.array : split, array;
import std.stdio : writeln;
import std.algorithm : count, map, filter;
import std.conv : to;

uint compute(char compSign)(string[] input)
{
	for (size_t i; input.length > 2; i += 1)
	{
		ulong countZero = input.count!(bin => (bin[i] == '0'));
		ulong countOne = input.count!(bin => (bin[i] == '1'));

		input = input.filter!(mixin("bin => countOne " ~ compSign ~ " countZero ? bin[i] == '1' : bin[i] == '0'")).array;
	}
	if (input.length == 1)
		return to!uint(input[0], 2);
	return to!uint(mixin("input[0] " ~ compSign ~ " input[1] ? input[0] : input[1]"), 2);
}

void main()
{
	string[] input = import("input2.txt").split;

	writeln(compute!('>')(input) * compute!('<')(input));
}
