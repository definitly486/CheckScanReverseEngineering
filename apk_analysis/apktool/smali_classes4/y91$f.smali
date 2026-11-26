.class public final Ly91$f;
.super Ly91$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly91;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final b:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Ly91;-><init>()V

    iput-char p1, p0, Ly91$f;->b:C

    return-void
.end method


# virtual methods
.method public final c(C)Z
    .locals 0

    iget-char p0, p0, Ly91$f;->b:C

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d()Ly91;
    .locals 1

    new-instance v0, Ly91$h;

    iget-char p0, p0, Ly91$f;->b:C

    invoke-direct {v0, p0}, Ly91$h;-><init>(C)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CharMatcher.is(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char p0, p0, Ly91$f;->b:C

    invoke-static {p0}, Ly91;->e(C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
