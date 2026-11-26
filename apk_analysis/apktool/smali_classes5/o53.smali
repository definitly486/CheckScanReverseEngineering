.class public final Lo53;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln53;


# instance fields
.field public final a:Lzs7;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    sget-object v1, Lcu0;->DROP_LATEST:Lcu0;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v0}, Lbt7;->b(IILcu0;I)Lzs7;

    move-result-object v0

    iput-object v0, p0, Lo53;->a:Lzs7;

    return-void
.end method


# virtual methods
.method public final a()Lfy6;
    .locals 0

    iget-object p0, p0, Lo53;->a:Lzs7;

    invoke-static {p0}, Lbf3;->a(Lvg5;)Lfy6;

    move-result-object p0

    return-object p0
.end method

.method public final b(IZ)V
    .locals 3

    new-instance v0, Lw81;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2, p2}, Lw81;-><init>(JZ)V

    iget-object p0, p0, Lo53;->a:Lzs7;

    invoke-virtual {p0, v0}, Lzs7;->e(Ljava/lang/Object;)Z

    return-void
.end method
