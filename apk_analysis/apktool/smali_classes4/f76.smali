.class public final synthetic Lf76;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/personalize/PersonalizeApiClient;

.field public final synthetic c:Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;

.field public final synthetic d:Lcom/my/tracker/personalize/PersonalizeRequest;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/personalize/PersonalizeApiClient;Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;Lcom/my/tracker/personalize/PersonalizeRequest;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf76;->b:Lcom/my/tracker/personalize/PersonalizeApiClient;

    iput-object p2, p0, Lf76;->c:Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;

    iput-object p3, p0, Lf76;->d:Lcom/my/tracker/personalize/PersonalizeRequest;

    iput-object p4, p0, Lf76;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lf76;->d:Lcom/my/tracker/personalize/PersonalizeRequest;

    iget-object v1, p0, Lf76;->e:Ljava/lang/String;

    iget-object v2, p0, Lf76;->b:Lcom/my/tracker/personalize/PersonalizeApiClient;

    iget-object p0, p0, Lf76;->c:Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;

    invoke-static {v2, p0, v0, v1}, Lcom/my/tracker/personalize/PersonalizeApiClient;->a(Lcom/my/tracker/personalize/PersonalizeApiClient;Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;Lcom/my/tracker/personalize/PersonalizeRequest;Ljava/lang/String;)V

    return-void
.end method
