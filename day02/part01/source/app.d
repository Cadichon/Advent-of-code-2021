import std.array : split;
import std.algorithm : each, splitter;
import std.range : chunks;
import std.stdio : writeln;

int horizontal;
int vertical;

auto up = (uint val) { vertical -= val; };
auto forward = (uint val) { horizontal += val; };
auto down = (uint val) { vertical += val; };

void main()
{
	static foreach(pair; import("input.txt").split.chunks(2))
	{
		mixin(pair[0] ~ "(" ~ pair[1] ~ ");");
	}
	writeln(horizontal * vertical);
}
