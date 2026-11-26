.class public final synthetic Ljv9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/tracker/obfuscated/v;


# instance fields
.field public final synthetic a:Lcom/my/tracker/obfuscated/i0;


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/i0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljv9;->a:Lcom/my/tracker/obfuscated/i0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ljv9;->a:Lcom/my/tracker/obfuscated/i0;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/my/tracker/obfuscated/i0;->b(Ljava/lang/String;)V

    return-void
.end method
