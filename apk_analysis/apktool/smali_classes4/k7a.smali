.class public final synthetic Lk7a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/r0;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/r0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk7a;->b:Lcom/my/tracker/obfuscated/r0;

    iput-object p2, p0, Lk7a;->c:Ljava/lang/String;

    iput-object p3, p0, Lk7a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lk7a;->c:Ljava/lang/String;

    iget-object v1, p0, Lk7a;->d:Ljava/lang/String;

    iget-object p0, p0, Lk7a;->b:Lcom/my/tracker/obfuscated/r0;

    invoke-static {p0, v0, v1}, Lcom/my/tracker/obfuscated/r0;->a(Lcom/my/tracker/obfuscated/r0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
