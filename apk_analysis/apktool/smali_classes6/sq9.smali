.class public final synthetic Lsq9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Lyads/ne;

.field public final synthetic c:Lyads/cu3;

.field public final synthetic d:Lyads/r04;

.field public final synthetic e:Ljava/io/IOException;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lyads/ne;Lyads/cu3;Lyads/r04;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsq9;->b:Lyads/ne;

    iput-object p2, p0, Lsq9;->c:Lyads/cu3;

    iput-object p3, p0, Lsq9;->d:Lyads/r04;

    iput-object p4, p0, Lsq9;->e:Ljava/io/IOException;

    iput-boolean p5, p0, Lsq9;->f:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 6

    iget-boolean v4, p0, Lsq9;->f:Z

    move-object v5, p1

    check-cast v5, Lyads/pe;

    iget-object v0, p0, Lsq9;->b:Lyads/ne;

    iget-object v1, p0, Lsq9;->c:Lyads/cu3;

    iget-object v2, p0, Lsq9;->d:Lyads/r04;

    iget-object v3, p0, Lsq9;->e:Ljava/io/IOException;

    invoke-static/range {v0 .. v5}, Lyads/cj0;->a(Lyads/ne;Lyads/cu3;Lyads/r04;Ljava/io/IOException;ZLyads/pe;)V

    return-void
.end method
