.class public final synthetic Lsw4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsw4;->b:Landroid/content/Context;

    iput-object p2, p0, Lsw4;->c:Ljava/lang/String;

    iput-object p3, p0, Lsw4;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lsw4;->c:Ljava/lang/String;

    iget-object v1, p0, Lsw4;->d:Ljava/lang/String;

    iget-object p0, p0, Lsw4;->b:Landroid/content/Context;

    invoke-static {p0, v0, v1}, Lww4;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lwx4;

    move-result-object p0

    return-object p0
.end method
