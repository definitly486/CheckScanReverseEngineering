.class public final synthetic Lh2a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/m52;

.field public final synthetic c:Lyads/s52;

.field public final synthetic d:Lyads/k52;

.field public final synthetic e:Lyads/fs2;


# direct methods
.method public synthetic constructor <init>(Lyads/m52;Lyads/s52;Lyads/k52;Lyads/fs2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh2a;->b:Lyads/m52;

    iput-object p2, p0, Lh2a;->c:Lyads/s52;

    iput-object p3, p0, Lh2a;->d:Lyads/k52;

    iput-object p4, p0, Lh2a;->e:Lyads/fs2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lh2a;->d:Lyads/k52;

    iget-object v1, p0, Lh2a;->e:Lyads/fs2;

    iget-object v2, p0, Lh2a;->b:Lyads/m52;

    iget-object p0, p0, Lh2a;->c:Lyads/s52;

    invoke-static {v2, p0, v0, v1, p1}, Lyads/m52;->a(Lyads/m52;Lyads/s52;Lyads/k52;Lyads/fs2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
