.class public final Los7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lnu2;

.field public final d:Lvs7;


# direct methods
.method public constructor <init>(Landroid/view/View;Lnl3;Lll3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Los7;->a:Lll3;

    iput-object p2, p0, Los7;->b:Lnl3;

    new-instance p2, Lnu2;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p2, p3}, Lnu2;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Los7;->c:Lnu2;

    new-instance p2, Lvs7;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p2, p3}, Lvs7;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Los7;->d:Lvs7;

    new-instance p2, Llb7;

    new-instance p3, Los7$a;

    invoke-direct {p3, p0}, Los7$a;-><init>(Los7;)V

    invoke-direct {p2, p3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lll3;)Lrx1;
    .locals 6

    invoke-static {p1, p2, p4}, Lx7;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p4

    invoke-virtual {p4}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v1, p0, Los7;->c:Lnu2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lfu2;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lfu2;-><init>(Lnu2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    new-instance p1, Loz7;

    invoke-direct {p1, v0}, Loz7;-><init>(Lw08;)V

    sget-object p2, Lne7;->c:Lhe7;

    invoke-virtual {p1, p2}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p1

    new-instance p2, Lls7;

    invoke-direct {p2, p0}, Lls7;-><init>(Los7;)V

    new-instance p3, Lfm6;

    const/4 p4, 0x1

    invoke-direct {p3, p2, p4}, Lfm6;-><init>(Lgh4;I)V

    new-instance p2, Lxz7;

    invoke-direct {p2, p1, p3}, Lxz7;-><init>(Lmz7;Lqx1;)V

    new-instance p1, Lks7;

    invoke-direct {p1, p0}, Lks7;-><init>(Los7;)V

    new-instance p3, Luz7;

    invoke-direct {p3, p2, p1}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance p1, Lms7;

    invoke-direct {p1, p5}, Lms7;-><init>(Lll3;)V

    new-instance p2, Lns7;

    invoke-direct {p2, p0, v3, p5}, Lns7;-><init>(Los7;Ljava/lang/String;Lll3;)V

    invoke-static {p3, p1, p2}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object p0

    return-object p0
.end method
