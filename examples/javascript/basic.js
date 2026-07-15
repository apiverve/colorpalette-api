/**
 * Color Palette Generator API - Basic Usage Example
 *
 * This example demonstrates the basic usage of the Color Palette Generator API.
 * API Documentation: https://docs.apiverve.com/ref/colorpalette
 */

const API_KEY = process.env.APIVERVE_API_KEY || 'YOUR_API_KEY_HERE';
const API_URL = 'https://api.apiverve.com/v1/colorpalette';

/**
 * Make a GET request to the Color Palette Generator API
 */
async function callColorPaletteGeneratorAPI() {
  try {
    // Query parameters
    const params &#x3D; new URLSearchParams({
            color: &#x27;FF5733&#x27;,
            scheme: &#x27;triade&#x27;,
            variation: &#x27;soft&#x27;,
            webSafe: false
        });

    const response = await fetch(`${API_URL}?${params}`, {
      method: 'GET',
      headers: {
        'x-api-key': API_KEY
      }
    });

    // Check if response is successful
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }

    const data = await response.json();

    // Check API response status
    if (data.status === 'ok') {
      console.log('✓ Success!');
      console.log('Response data:', data.data);
      return data.data;
    } else {
      console.error('✗ API Error:', data.error || 'Unknown error');
      return null;
    }

  } catch (error) {
    console.error('✗ Request failed:', error.message);
    return null;
  }
}

// Run the example
callColorPaletteGeneratorAPI()
  .then(result => {
    if (result) {
      console.log('\n📊 Final Result:');
      console.log(JSON.stringify(result, null, 2));
    }
  });
