.class public final synthetic Lqt9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tp0;


# instance fields
.field public final synthetic b:Lyads/do2;

.field public final synthetic c:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lyads/do2;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqt9;->b:Lyads/do2;

    iput-object p2, p0, Lqt9;->c:Lnl3;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lqt9;->b:Lyads/do2;

    iget-object p0, p0, Lqt9;->c:Lnl3;

    invoke-static {v0, p0}, Lyads/do2;->a(Lyads/do2;Lnl3;)V

    return-void
.end method
