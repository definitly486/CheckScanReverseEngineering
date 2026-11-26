.class public final Luw5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Low5;

.field public final b:Lzs7;

.field public final c:Lz68;


# direct methods
.method public constructor <init>(Low5;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luw5;->a:Low5;

    const/4 p1, 0x0

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, p1, v0}, Lbt7;->b(IILcu0;I)Lzs7;

    move-result-object p1

    iput-object p1, p0, Luw5;->b:Lzs7;

    sget-object p1, Lkx2;->b:Lkx2;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Luw5;->c:Lz68;

    return-void
.end method
