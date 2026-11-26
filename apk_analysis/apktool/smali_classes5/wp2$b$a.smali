.class public final Lwp2$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwp2$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lwp2$b;


# direct methods
.method public constructor <init>(Lwp2$b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwp2$b$a;->c:Lwp2$b;

    iput-boolean p2, p0, Lwp2$b$a;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lwp2$b$a;->c:Lwp2$b;

    iget-object v0, v0, Lwp2$b;->c:Lwp2;

    iget-boolean p0, p0, Lwp2$b$a;->b:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    iput-boolean p0, v0, Lwp2;->n:Z

    iget-wide v2, v0, Lwp2;->j:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    iget-object p0, v0, Lwp2;->m:La98;

    iput-boolean v1, p0, La98;->b:Z

    invoke-virtual {p0}, La98;->b()V

    :cond_0
    iput-boolean v1, v0, Lwp2;->q:Z

    return-void
.end method
