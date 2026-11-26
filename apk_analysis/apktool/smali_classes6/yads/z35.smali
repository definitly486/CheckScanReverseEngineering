.class public abstract Lyads/z35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv;


# static fields
.field public static final b:Lyads/jv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyq;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lyq;-><init>(I)V

    sput-object v0, Lyads/z35;->b:Lyads/jv;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lyads/z35;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lyads/sw5;->e:Lyads/jv;

    invoke-interface {v0, p0}, Lyads/jv;->a(Landroid/os/Bundle;)Lyads/kv;

    move-result-object p0

    check-cast p0, Lyads/z35;

    return-object p0

    :cond_0
    const-string p0, "Unknown RatingType: "

    invoke-static {v0, p0}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object v0, Lyads/fq5;->e:Lyads/jv;

    invoke-interface {v0, p0}, Lyads/jv;->a(Landroid/os/Bundle;)Lyads/kv;

    move-result-object p0

    check-cast p0, Lyads/z35;

    return-object p0

    :cond_2
    sget-object v0, Lyads/xt4;->d:Lyads/jv;

    invoke-interface {v0, p0}, Lyads/jv;->a(Landroid/os/Bundle;)Lyads/kv;

    move-result-object p0

    check-cast p0, Lyads/z35;

    return-object p0

    :cond_3
    sget-object v0, Lyads/x83;->e:Lyads/jv;

    invoke-interface {v0, p0}, Lyads/jv;->a(Landroid/os/Bundle;)Lyads/kv;

    move-result-object p0

    check-cast p0, Lyads/z35;

    return-object p0
.end method
