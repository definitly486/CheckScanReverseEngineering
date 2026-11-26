.class public final Lju2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lju2;->f:Ljava/lang/String;

    iput-object p3, p0, Lju2;->g:Ljava/lang/String;

    iput-object p1, p0, Lju2;->h:Landroid/net/Uri;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lju2;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;->setTitle(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;

    iget-object v0, p0, Lju2;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;->setDescription(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;

    iget-object p0, p0, Lju2;->h:Landroid/net/Uri;

    invoke-virtual {p1, p0}, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
