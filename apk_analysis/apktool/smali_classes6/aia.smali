.class public final synthetic Laia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lnl3;

.field public final synthetic c:Lyads/yr2;

.field public final synthetic d:Lyads/fs2;


# direct methods
.method public synthetic constructor <init>(Lnl3;Lyads/yr2;Lyads/fs2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laia;->b:Lnl3;

    iput-object p2, p0, Laia;->c:Lyads/yr2;

    iput-object p3, p0, Laia;->d:Lyads/fs2;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Laia;->c:Lyads/yr2;

    iget-object v1, p0, Laia;->d:Lyads/fs2;

    iget-object p0, p0, Laia;->b:Lnl3;

    invoke-static {p0, v0, v1}, Lyads/yr2;->a(Lnl3;Lyads/yr2;Lyads/fs2;)Lj59;

    move-result-object p0

    return-object p0
.end method
