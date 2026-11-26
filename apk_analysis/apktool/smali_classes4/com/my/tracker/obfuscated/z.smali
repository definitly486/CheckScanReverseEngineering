.class public final Lcom/my/tracker/obfuscated/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/tracker/obfuscated/x;


# instance fields
.field private final a:I

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/my/tracker/obfuscated/z;->a:I

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/z;->g()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/my/tracker/obfuscated/z;->a:I

    return p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lcom/my/tracker/obfuscated/z;->b:I

    return p0
.end method

.method public f()V
    .locals 1

    iget v0, p0, Lcom/my/tracker/obfuscated/z;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/tracker/obfuscated/z;->b:I

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/my/tracker/obfuscated/z;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CountBased TS] id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/my/tracker/obfuscated/z;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/my/tracker/obfuscated/z;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
