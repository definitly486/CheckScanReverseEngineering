.class public final Li2a;
.super Lin9;
.source "SourceFile"


# instance fields
.field public final d:Lqn9;


# direct methods
.method public constructor <init>(Lz2a;Llia;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lin9;-><init>(Lz2a;Llia;)V

    new-instance p1, Lqn9;

    invoke-direct {p1, p2}, Lqn9;-><init>(Llia;)V

    iput-object p1, p0, Li2a;->d:Lqn9;

    return-void
.end method

.method public static d(Lj8a;)V
    .locals 1

    sget-object v0, Ll6a;->n:Ll6a;

    invoke-virtual {p0, v0}, Lj8a;->a(Ll6a;)V

    return-void
.end method
