.class public Lyads/xr2;
.super Lyads/as2;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lyads/as2;-><init>()V

    iput-object p1, p0, Lyads/xr2;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyads/xr2;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public a(Lyads/fs2;)Ljava/lang/Object;
    .locals 0

    .line 6
    iget-object p0, p0, Lyads/xr2;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Lyads/fs2;Lnl3;)Lyads/tp0;
    .locals 0

    .line 7
    sget-object p0, Lyads/tp0;->a:Lyads/tp0;

    return-object p0
.end method

.method public final b(Lyads/fs2;Lnl3;)Lyads/tp0;
    .locals 0

    iget-object p0, p0, Lyads/xr2;->a:Ljava/lang/Object;

    invoke-interface {p2, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lyads/tp0;->a:Lyads/tp0;

    return-object p0
.end method
