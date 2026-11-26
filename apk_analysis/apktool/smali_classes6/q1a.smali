.class public final synthetic Lq1a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/lz1;

.field public final synthetic c:Lyads/wz1;

.field public final synthetic d:Lyads/jz1;

.field public final synthetic e:Lyads/fs2;


# direct methods
.method public synthetic constructor <init>(Lyads/lz1;Lyads/wz1;Lyads/jz1;Lyads/fs2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq1a;->b:Lyads/lz1;

    iput-object p2, p0, Lq1a;->c:Lyads/wz1;

    iput-object p3, p0, Lq1a;->d:Lyads/jz1;

    iput-object p4, p0, Lq1a;->e:Lyads/fs2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lq1a;->d:Lyads/jz1;

    iget-object v1, p0, Lq1a;->e:Lyads/fs2;

    iget-object v2, p0, Lq1a;->b:Lyads/lz1;

    iget-object p0, p0, Lq1a;->c:Lyads/wz1;

    invoke-static {v2, p0, v0, v1, p1}, Lyads/lz1;->a(Lyads/lz1;Lyads/wz1;Lyads/jz1;Lyads/fs2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
