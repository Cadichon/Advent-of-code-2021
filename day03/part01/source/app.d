import std.array : split;
import std.stdio : writeln;
import std.range : transposed;
import std.algorithm : count, each;

void main()
{
	uint gamma;
	uint epsilon;

	import("input.txt").split.transposed.each!((bin) {
		ulong numberOfZero = bin.count('1');
		ulong numberOfOne = bin.count('0');
	
		gamma <<= 1;
		gamma += (numberOfOne > numberOfZero ? 1 : 0);

		epsilon <<= 1;
		epsilon += (numberOfOne > numberOfZero ? 0 : 1);	
	});
	writeln(gamma * epsilon);
}
