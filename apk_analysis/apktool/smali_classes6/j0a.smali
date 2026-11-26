.class public final synthetic Lj0a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/k14;

.field public final synthetic c:Lyads/l14;

.field public final synthetic d:Lyads/cu3;

.field public final synthetic e:Lyads/r04;

.field public final synthetic f:Ljava/io/IOException;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lyads/k14;Lyads/l14;Lyads/cu3;Lyads/r04;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0a;->b:Lyads/k14;

    iput-object p2, p0, Lj0a;->c:Lyads/l14;

    iput-object p3, p0, Lj0a;->d:Lyads/cu3;

    iput-object p4, p0, Lj0a;->e:Lyads/r04;

    iput-object p5, p0, Lj0a;->f:Ljava/io/IOException;

    iput-boolean p6, p0, Lj0a;->g:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v4, p0, Lj0a;->f:Ljava/io/IOException;

    iget-boolean v5, p0, Lj0a;->g:Z

    iget-object v0, p0, Lj0a;->b:Lyads/k14;

    iget-object v1, p0, Lj0a;->c:Lyads/l14;

    iget-object v2, p0, Lj0a;->d:Lyads/cu3;

    iget-object v3, p0, Lj0a;->e:Lyads/r04;

    invoke-virtual/range {v0 .. v5}, Lyads/k14;->a(Lyads/l14;Lyads/cu3;Lyads/r04;Ljava/io/IOException;Z)V

    return-void
.end method
