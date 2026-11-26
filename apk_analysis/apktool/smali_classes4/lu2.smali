.class public final Llu2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lnu2;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lnu2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Llu2;->f:Lnu2;

    iput-object p2, p0, Llu2;->g:Ljava/lang/String;

    iput-object p3, p0, Llu2;->h:Ljava/lang/String;

    iput-object p4, p0, Llu2;->i:Ljava/lang/String;

    iput-object p5, p0, Llu2;->j:Landroid/net/Uri;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Llu2;->f:Lnu2;

    iget-object v1, v0, Lnu2;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llu2;->g:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setLink(Landroid/net/Uri;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    iget-object v1, v0, Lnu2;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setDomainUriPrefix(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    new-instance v1, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;

    iget-object v2, v0, Lnu2;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setAndroidParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    iget-object v1, v0, Lnu2;->d:Ljava/lang/String;

    new-instance v2, Liu2;

    invoke-direct {v2, v0}, Liu2;-><init>(Lnu2;)V

    invoke-static {p1, v1, v2}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinksKt;->iosParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;Ljava/lang/String;Lnl3;)V

    new-instance v0, Lju2;

    iget-object v1, p0, Llu2;->i:Ljava/lang/String;

    iget-object v2, p0, Llu2;->j:Landroid/net/Uri;

    iget-object p0, p0, Llu2;->h:Ljava/lang/String;

    invoke-direct {v0, v2, p0, v1}, Lju2;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinksKt;->socialMetaTagParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;Lnl3;)V

    sget-object p0, Lku2;->f:Lku2;

    invoke-static {p1, p0}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinksKt;->googleAnalyticsParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;Lnl3;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
