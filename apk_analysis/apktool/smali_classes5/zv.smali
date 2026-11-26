.class public final Lzv;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lb36<",
        "+",
        "Lxu4;",
        "+",
        "Lwu4$a;",
        ">;",
        "Lxu4;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lzv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lzv;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lzv;->f:Lzv;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lb36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lb36;->b:Ljava/lang/Object;

    check-cast p0, Lxu4;

    return-object p0
.end method
