import std.array : split;
import std.range : chunks;
import std.stdio : writeln;

int horizontal;
int vertical;
int aim;

auto up = (uint val) { aim -= val; };
auto forward = (uint val) {
	horizontal += val;
	vertical += aim * val;
};
auto down = (uint val) { aim += val; };

void main()
{
	static foreach(pair; import("input.txt").split.chunks(2))
	{
		mixin(pair[0] ~ "(" ~ pair[1] ~ ");");
	}
	writeln(horizontal * vertical);
}