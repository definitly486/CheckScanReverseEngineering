.class public final Lyads/sb4;
.super Lyads/br;
.source "SourceFile"


# instance fields
.field public final b:Lyads/jb4;


# direct methods
.method public constructor <init>(Lyads/ls4;Lyads/ha3;Lyads/rd6;Lyads/ia4;Lyads/ja4;Lyads/mq4;)V
    .locals 3

    new-instance v0, Lyads/wb4;

    invoke-direct {v0, p2}, Lyads/wb4;-><init>(Lyads/ha3;)V

    new-instance p2, Lyads/jb4;

    const/4 v1, 0x0

    const/16 v2, 0xfe

    invoke-direct {p2, p1, v1, v2}, Lyads/jb4;-><init>(Lyads/ls4;Ljava/util/List;I)V

    invoke-direct {p0, p1}, Lyads/br;-><init>(Lyads/ls4;)V

    iput-object p2, p0, Lyads/sb4;->b:Lyads/jb4;

    iput-object v0, p2, Lyads/jb4;->l:Lyads/rb4;

    iput-object p3, p2, Lyads/jb4;->p:Lyads/rd6;

    iput-object p4, p2, Lyads/jb4;->n:Lyads/ia4;

    iput-object p5, p2, Lyads/jb4;->m:Lyads/ja4;

    iput-object p6, p2, Lyads/jb4;->o:Lyads/mq4;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 13
    iget-object p0, p0, Lyads/sb4;->b:Lyads/jb4;

    invoke-virtual {p0, p1}, Lyads/jb4;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lyads/ha3;)V
    .locals 1

    new-instance p1, Lyads/mb4;

    iget-object v0, p0, Lyads/sb4;->b:Lyads/jb4;

    invoke-direct {p1, v0}, Lyads/mb4;-><init>(Lyads/jb4;)V

    iget-object p0, p0, Lyads/br;->a:Lyads/ls4;

    invoke-virtual {p0, p1}, Lyads/ls4;->setHtmlWebViewListener(Lyads/ha3;)V

    return-void
.end method
