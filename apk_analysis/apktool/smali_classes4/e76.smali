.class public final synthetic Le76;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/personalize/PersonalizeApiClient;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/my/tracker/personalize/PersonalizeRequest;

.field public final synthetic e:Landroid/os/Handler;

.field public final synthetic f:Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/personalize/PersonalizeApiClient;Ljava/lang/String;Lcom/my/tracker/personalize/PersonalizeRequest;Landroid/os/Handler;Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le76;->b:Lcom/my/tracker/personalize/PersonalizeApiClient;

    iput-object p2, p0, Le76;->c:Ljava/lang/String;

    iput-object p3, p0, Le76;->d:Lcom/my/tracker/personalize/PersonalizeRequest;

    iput-object p4, p0, Le76;->e:Landroid/os/Handler;

    iput-object p5, p0, Le76;->f:Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Le76;->e:Landroid/os/Handler;

    iget-object v1, p0, Le76;->f:Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;

    iget-object v2, p0, Le76;->b:Lcom/my/tracker/personalize/PersonalizeApiClient;

    iget-object v3, p0, Le76;->c:Ljava/lang/String;

    iget-object p0, p0, Le76;->d:Lcom/my/tracker/personalize/PersonalizeRequest;

    invoke-static {v2, v3, p0, v0, v1}, Lcom/my/tracker/personalize/PersonalizeApiClient;->b(Lcom/my/tracker/personalize/PersonalizeApiClient;Ljava/lang/String;Lcom/my/tracker/personalize/PersonalizeRequest;Landroid/os/Handler;Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;)V

    return-void
.end method
