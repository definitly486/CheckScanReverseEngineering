.class public interface abstract Lyads/iw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/iw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxp;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/iw;->a:Lyads/iw;

    return-void
.end method

.method public static synthetic b(Lyads/bd0;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lyads/bd0;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lyads/bd0;->a:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
