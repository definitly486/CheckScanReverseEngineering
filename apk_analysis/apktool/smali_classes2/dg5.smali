.class public final synthetic Ldg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhp2;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lnl3;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldg5;->b:Ljava/lang/String;

    iput-object p2, p0, Ldg5;->c:Lnl3;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Ldg5;->b:Ljava/lang/String;

    iget-object p0, p0, Ldg5;->c:Lnl3;

    invoke-static {v0, p0}, Landroidx/datastore/core/MulticastFileObserver$Companion;->a(Ljava/lang/String;Lnl3;)V

    return-void
.end method
