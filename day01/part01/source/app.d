import std.stdio : writeln;
import std.algorithm : map, fold;
import std.conv : to;
import std.array : split;
import std.range : slide;

auto input = import("./input.txt").split.map!(to!uint);

void main()
{
	writeln(input.slide(2).fold!((acc, pair) => acc + (pair[1] > pair[0] ? 1 : 0))(0));
}