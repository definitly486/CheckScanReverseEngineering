.class public final Lyads/dy3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/f80;


# direct methods
.method public constructor <init>(Lyads/f80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/dy3;->a:Lyads/f80;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Float;
    .locals 1

    iget-object p0, p0, Lyads/dy3;->a:Lyads/f80;

    iget-object v0, p0, Lyads/f80;->a:Lyads/p80;

    iget-object p0, p0, Lyads/f80;->d:Lyads/i80;

    if-eqz v0, :cond_0

    iget p0, v0, Lyads/p80;->a:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    iget v0, p0, Lyads/i80;->c:I

    if-lez v0, :cond_1

    iget p0, p0, Lyads/i80;->d:I

    if-lez p0, :cond_1

    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
