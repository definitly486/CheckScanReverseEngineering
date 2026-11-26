.class public final synthetic Lfu2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw08;


# instance fields
.field public final synthetic b:Lnu2;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lnu2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfu2;->b:Lnu2;

    iput-object p2, p0, Lfu2;->c:Ljava/lang/String;

    iput-object p3, p0, Lfu2;->d:Ljava/lang/String;

    iput-object p4, p0, Lfu2;->e:Ljava/lang/String;

    iput-object p5, p0, Lfu2;->f:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final c(Loz7$a;)V
    .locals 7

    sget-object v0, Lcom/google/firebase/Firebase;->INSTANCE:Lcom/google/firebase/Firebase;

    invoke-static {v0}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinksKt;->getDynamicLinks(Lcom/google/firebase/Firebase;)Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    move-result-object v0

    new-instance v1, Llu2;

    iget-object v2, p0, Lfu2;->b:Lnu2;

    iget-object v3, p0, Lfu2;->c:Ljava/lang/String;

    iget-object v4, p0, Lfu2;->d:Ljava/lang/String;

    iget-object v5, p0, Lfu2;->e:Ljava/lang/String;

    iget-object v6, p0, Lfu2;->f:Landroid/net/Uri;

    invoke-direct/range {v1 .. v6}, Llu2;-><init>(Lnu2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    const/4 p0, 0x2

    invoke-static {v0, p0, v1}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinksKt;->shortLinkAsync(Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;ILnl3;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance v0, Lmu2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmu2;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lgu2;

    invoke-direct {v1, v0}, Lgu2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance v0, Lhu2;

    invoke-direct {v0, p1}, Lhu2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
