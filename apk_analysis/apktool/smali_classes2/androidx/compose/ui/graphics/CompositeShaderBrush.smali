.class public final Landroidx/compose/ui/graphics/CompositeShaderBrush;
.super Landroidx/compose/ui/graphics/ShaderBrush;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final blendMode:I

.field private final dstBrush:Landroidx/compose/ui/graphics/ShaderBrush;

.field private final srcBrush:Landroidx/compose/ui/graphics/ShaderBrush;


# direct methods
.method private constructor <init>(Landroidx/compose/ui/graphics/ShaderBrush;Landroidx/compose/ui/graphics/ShaderBrush;I)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/graphics/ShaderBrush;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/CompositeShaderBrush;->dstBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    iput-object p2, p0, Landroidx/compose/ui/graphics/CompositeShaderBrush;->srcBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    iput p3, p0, Landroidx/compose/ui/graphics/CompositeShaderBrush;->blendMode:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/ShaderBrush;Landroidx/compose/ui/graphics/ShaderBrush;ILjh2;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/CompositeShaderBrush;-><init>(Landroidx/compose/ui/graphics/ShaderBrush;Landroidx/compose/ui/graphics/ShaderBrush;I)V

    return-void
.end method


# virtual methods
.method public createShader-uvyYCjk(J)Landroid/graphics/Shader;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/CompositeShaderBrush;->dstBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/graphics/ShaderBrush;->createShader-uvyYCjk(J)Landroid/graphics/Shader;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/graphics/CompositeShaderBrush;->srcBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    invoke-virtual {v1, p1, p2}, Landroidx/compose/ui/graphics/ShaderBrush;->createShader-uvyYCjk(J)Landroid/graphics/Shader;

    move-result-object p1

    iget p0, p0, Landroidx/compose/ui/graphics/CompositeShaderBrush;->blendMode:I

    invoke-static {v0, p1, p0}, Landroidx/compose/ui/graphics/ShaderKt;->CompositeShader-7EN7VTw(Landroid/graphics/Shader;Landroid/graphics/Shader;I)Landroid/graphics/Shader;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/CompositeShaderBrush;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/graphics/CompositeShaderBrush;->dstBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    check-cast p1, Landroidx/compose/ui/graphics/CompositeShaderBrush;

    iget-object v3, p1, Landroidx/compose/ui/graphics/CompositeShaderBrush;->dstBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/graphics/CompositeShaderBrush;->srcBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    iget-object v3, p1, Landroidx/compose/ui/graphics/CompositeShaderBrush;->srcBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Landroidx/compose/ui/graphics/CompositeShaderBrush;->blendMode:I

    iget p1, p1, Landroidx/compose/ui/graphics/CompositeShaderBrush;->blendMode:I

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBlendMode-0nO6VwU()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/CompositeShaderBrush;->blendMode:I

    return p0
.end method

.method public final getDstBrush()Landroidx/compose/ui/graphics/ShaderBrush;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/CompositeShaderBrush;->dstBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    return-object p0
.end method

.method public final getSrcBrush()Landroidx/compose/ui/graphics/ShaderBrush;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/CompositeShaderBrush;->srcBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/CompositeShaderBrush;->dstBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/graphics/CompositeShaderBrush;->srcBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Landroidx/compose/ui/graphics/CompositeShaderBrush;->blendMode:I

    invoke-static {p0}, Landroidx/compose/ui/graphics/BlendMode;->hashCode-impl(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CompositeShaderBrush(dstBrush="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/graphics/CompositeShaderBrush;->dstBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", srcBrush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/graphics/CompositeShaderBrush;->srcBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", blendMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/ui/graphics/CompositeShaderBrush;->blendMode:I

    invoke-static {p0}, Landroidx/compose/ui/graphics/BlendMode;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
