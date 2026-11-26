.class public final synthetic Ld34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Lyads/x85;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ld34;->b:Ljava/lang/Object;

    iput-object p2, p0, Ld34;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lyads/hi6;)V
    .locals 1

    iget-object v0, p0, Ld34;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Ld34;->c:Ljava/lang/Object;

    check-cast p0, Lnl3;

    invoke-static {v0, p0, p1}, Lyads/ts3;->a(Ljava/lang/String;Lnl3;Lyads/hi6;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ld34;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    iget-object p0, p0, Ld34;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    check-cast p1, Lj21;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->b(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Ljava/util/HashSet;Lj21;)Lqq1;

    move-result-object p0

    return-object p0
.end method
