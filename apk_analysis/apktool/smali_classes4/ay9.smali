.class public final synthetic Lay9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/i0;

.field public final synthetic c:Lcom/my/tracker/obfuscated/f3;


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/f3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lay9;->b:Lcom/my/tracker/obfuscated/i0;

    iput-object p2, p0, Lay9;->c:Lcom/my/tracker/obfuscated/f3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lay9;->b:Lcom/my/tracker/obfuscated/i0;

    iget-object p0, p0, Lay9;->c:Lcom/my/tracker/obfuscated/f3;

    invoke-static {v0, p0}, Lcom/my/tracker/obfuscated/i0;->w(Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/f3;)V

    return-void
.end method
