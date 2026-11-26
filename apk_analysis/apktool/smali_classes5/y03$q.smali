.class public abstract Ly03$q;
.super Ly03;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly03;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "q"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ly03;-><init>()V

    iput p1, p0, Ly03$q;->a:I

    iput p2, p0, Ly03$q;->b:I

    return-void
.end method


# virtual methods
.method public abstract c()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Ly03$q;->b:I

    iget v1, p0, Ly03$q;->a:I

    if-nez v1, :cond_0

    const-string v2, ":%s(%3$d)"

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const-string v2, ":%s(%2$dn)"

    goto :goto_0

    :cond_1
    const-string v2, ":%s(%2$dn%3$+d)"

    :goto_0
    invoke-virtual {p0}, Ly03$q;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v1, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
