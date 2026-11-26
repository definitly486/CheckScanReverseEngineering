.class public final Lyads/w40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/pn0;


# instance fields
.field public final a:[Lyads/pn0;


# direct methods
.method public varargs constructor <init>([Lyads/pn0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/w40;->a:[Lyads/pn0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 4

    iget-object p0, p0, Lyads/w40;->a:[Lyads/pn0;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-interface {v3, p1}, Lyads/pn0;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
