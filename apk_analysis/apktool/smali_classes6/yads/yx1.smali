.class public abstract Lyads/yx1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/m36;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lyads/tx1;->values()[Lyads/tx1;

    move-result-object v0

    invoke-static {v0}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lik3;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lik3;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v1, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/yx1;->a:Lyads/m36;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/tx1;

    return p0
.end method
