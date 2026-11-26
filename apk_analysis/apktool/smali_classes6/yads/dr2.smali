.class public final Lyads/dr2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/f06;

.field public final b:[I


# direct methods
.method public constructor <init>(ILyads/f06;[I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length p1, p3

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v0, "Empty tracks are not allowed"

    invoke-static {v0, p1}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ETSDefinition"

    invoke-static {v0, p1}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Lyads/dr2;->a:Lyads/f06;

    iput-object p3, p0, Lyads/dr2;->b:[I

    return-void
.end method
