# Wetter

Weather forecast visualization tool using api.weather.mg

## Usage

```bash
# Install and run
nix run github:kmein/wetter

# Use default location (Berlin)
wetter

# Specify location (longitude,latitude)
wetter -74.0060,40.7128

# Set default location
export WETTER_LOCATION=-74.0060,40.7128
wetter
```

## Output

Generates PNG image with:
- Temperature curves (min/max)
- Precipitation bars (mm)
- Sunshine bars (minutes/hour)
- Clean grid lines at day boundaries

## Configuration

- `WETTER_LOCATION`: Default coordinates
- `WETTER_CACHE_DIR`: Cache directory (default: ~/.cache/wetter/)

See `wetter --help` for more options.