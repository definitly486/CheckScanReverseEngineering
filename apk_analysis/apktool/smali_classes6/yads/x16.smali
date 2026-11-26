.class public final Lyads/x16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/a26;


# direct methods
.method public constructor <init>(Lyads/a26;)V
    .locals 0

    iput-object p1, p0, Lyads/x16;->b:Lyads/a26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lyads/x16;->b:Lyads/a26;

    iget-object p0, p0, Lyads/a26;->e:Lyads/lp6;

    iget-object v0, p0, Lyads/lp6;->b:Lyads/sp6;

    new-instance v1, Lyads/zp6;

    invoke-direct {v1, p0}, Lyads/zp6;-><init>(Lyads/lp6;)V

    invoke-virtual {v0, v1}, Lyads/sp6;->a(Lyads/mp6;)V

    return-void
.end method
