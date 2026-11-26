.class public final synthetic Li34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Li34;->b:Ljava/lang/Object;

    iput-object p2, p0, Li34;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Li34;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    iget-object p0, p0, Li34;->c:Ljava/lang/Object;

    check-cast p0, Lj21;

    check-cast p1, Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->E(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Lj21;Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)Lf73;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Li34;->b:Ljava/lang/Object;

    check-cast v0, Lyads/ne;

    iget-object p0, p0, Li34;->c:Ljava/lang/Object;

    check-cast p0, Lyads/yn0;

    check-cast p1, Lyads/pe;

    invoke-static {v0, p0, p1}, Lyads/cj0;->a(Lyads/ne;Lyads/yn0;Lyads/pe;)V

    return-void
.end method
