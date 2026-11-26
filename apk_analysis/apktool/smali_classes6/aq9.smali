.class public final synthetic Laq9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/y52;

.field public final synthetic c:Lyads/fs2;

.field public final synthetic d:Lyads/uu5;


# direct methods
.method public synthetic constructor <init>(Lyads/uu5;Lyads/y52;Lyads/fs2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Laq9;->b:Lyads/y52;

    iput-object p3, p0, Laq9;->c:Lyads/fs2;

    iput-object p1, p0, Laq9;->d:Lyads/uu5;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Laq9;->c:Lyads/fs2;

    iget-object v1, p0, Laq9;->d:Lyads/uu5;

    iget-object p0, p0, Laq9;->b:Lyads/y52;

    invoke-static {p0, v0, v1, p1}, Lyads/c62;->a(Lyads/y52;Lyads/fs2;Lyads/uu5;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
