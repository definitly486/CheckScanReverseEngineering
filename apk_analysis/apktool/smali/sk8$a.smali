.class public final Lsk8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnu5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/tapjoy/TJPlacement;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk8$a;->a:Lcom/tapjoy/TJPlacement;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lsk8$a;->a:Lcom/tapjoy/TJPlacement;

    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->showContent()V

    return-void
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lsk8$a;->a:Lcom/tapjoy/TJPlacement;

    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->isContentAvailable()Z

    move-result p0

    return p0
.end method
