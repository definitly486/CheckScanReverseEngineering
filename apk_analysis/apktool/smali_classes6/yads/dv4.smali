.class public final Lyads/dv4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/wc0;


# static fields
.field public static final a:Lyads/dv4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/dv4;

    invoke-direct {v0}, Lyads/dv4;-><init>()V

    sput-object v0, Lyads/dv4;->a:Lyads/dv4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/bd0;)J
    .locals 0

    new-instance p0, Ljava/io/IOException;

    const-string p1, "PlaceholderDataSource cannot be opened"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Lyads/p16;)V
    .locals 0

    .line 8
    return-void
.end method

.method public final c([BII)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d()Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
