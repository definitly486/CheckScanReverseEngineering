.class public abstract Lyads/u01;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/l66;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li01;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Li01;-><init>(I)V

    sput-object v0, Lyads/u01;->a:Lyads/l66;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^(?!/)(.+)(?<!/)$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
