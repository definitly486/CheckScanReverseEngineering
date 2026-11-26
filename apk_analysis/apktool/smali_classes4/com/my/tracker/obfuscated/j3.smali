.class public final synthetic Lcom/my/tracker/obfuscated/j3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/r0$a;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/r0$a;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/tracker/obfuscated/j3;->b:Lcom/my/tracker/obfuscated/r0$a;

    iput-object p2, p0, Lcom/my/tracker/obfuscated/j3;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/my/tracker/obfuscated/j3;->b:Lcom/my/tracker/obfuscated/r0$a;

    iget-object p0, p0, Lcom/my/tracker/obfuscated/j3;->c:Ljava/util/Map;

    invoke-static {v0, p0}, Lcom/my/tracker/obfuscated/r0$a;->a(Lcom/my/tracker/obfuscated/r0$a;Ljava/util/Map;)V

    return-void
.end method
