.class public final Lyads/o15;
.super Lyads/rb5;
.source "SourceFile"


# instance fields
.field public final synthetic i:Lyads/p15;


# direct methods
.method public constructor <init>(Lyads/p15;)V
    .locals 0

    iput-object p1, p0, Lyads/o15;->i:Lyads/p15;

    invoke-direct {p0}, Lyads/rb5;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Lyads/o15;->i:Lyads/p15;

    iget-object p0, p0, Lyads/p15;->d:Lyads/lw;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/lw;->j:Z

    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyads/o15;->i:Lyads/p15;

    iget-object p0, p0, Lyads/p15;->d:Lyads/lw;

    invoke-virtual {p0}, Lyads/lw;->a()V

    const/4 p0, 0x0

    return-object p0
.end method
