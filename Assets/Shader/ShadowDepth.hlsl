#include"CB3D.hlsli"

VS_OUT VS(float4 pos : POSITION, float4 Normal : NORMAL, float2 Uv : TEXCOORD)
{
    VS_OUT outData;
    outData.pos = mul(pos, g_matWVP);
    outData.normal = Normal;
    outData.uv = Uv;
    outData.eye = float4(0, 0, 0, 0);
    outData.globalPos = float4(0, 0, 0, 0);
    outData.localPos = pos;
    return outData;
}

float4 PS(VS_OUT inData) : SV_Target
{
    return float4(0, 0, 0, 1);
}