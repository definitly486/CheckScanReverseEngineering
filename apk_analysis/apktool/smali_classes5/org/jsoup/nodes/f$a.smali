.class public final Lorg/jsoup/nodes/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/f$a$a;
    }
.end annotation


# instance fields
.field public b:Lorg/jsoup/nodes/j$c;

.field public c:Ljava/nio/charset/Charset;

.field public final d:Z

.field public final e:I

.field public final f:I

.field public final g:Lorg/jsoup/nodes/f$a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/jsoup/nodes/j$c;->base:Lorg/jsoup/nodes/j$c;

    iput-object v0, p0, Lorg/jsoup/nodes/f$a;->b:Lorg/jsoup/nodes/j$c;

    sget-object v0, Lg92;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/jsoup/nodes/f$a;->c:Ljava/nio/charset/Charset;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/nodes/f$a;->d:Z

    iput v0, p0, Lorg/jsoup/nodes/f$a;->e:I

    const/16 v0, 0x1e

    iput v0, p0, Lorg/jsoup/nodes/f$a;->f:I

    sget-object v0, Lorg/jsoup/nodes/f$a$a;->html:Lorg/jsoup/nodes/f$a$a;

    iput-object v0, p0, Lorg/jsoup/nodes/f$a;->g:Lorg/jsoup/nodes/f$a$a;

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/f$a;->e()Lorg/jsoup/nodes/f$a;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lorg/jsoup/nodes/f$a;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f$a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/jsoup/nodes/f$a;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/f$a;->c:Ljava/nio/charset/Charset;

    iget-object p0, p0, Lorg/jsoup/nodes/f$a;->b:Lorg/jsoup/nodes/j$c;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/jsoup/nodes/j$c;->valueOf(Ljava/lang/String;)Lorg/jsoup/nodes/j$c;

    move-result-object p0

    iput-object p0, v0, Lorg/jsoup/nodes/f$a;->b:Lorg/jsoup/nodes/j$c;

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
