.class public final synthetic Lgea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/uh;


# direct methods
.method public synthetic constructor <init>(Lyads/uh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgea;->b:Lyads/uh;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lgea;->b:Lyads/uh;

    check-cast p1, Landroid/app/ApplicationExitInfo;

    invoke-static {p0, p1}, Lyads/uh;->a(Lyads/uh;Landroid/app/ApplicationExitInfo;)Lyads/ff;

    move-result-object p0

    return-object p0
.end method
