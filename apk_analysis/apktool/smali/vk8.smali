.class public final Lvk8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJSetUserIDListener;


# instance fields
.field public final synthetic a:Lgj4;


# direct methods
.method public constructor <init>(Lgj4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvk8;->a:Lgj4;

    return-void
.end method


# virtual methods
.method public final onSetUserIDFailure(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lvk8;->a:Lgj4;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lgj4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onSetUserIDSuccess()V
    .locals 1

    iget-object p0, p0, Lvk8;->a:Lgj4;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lgj4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
