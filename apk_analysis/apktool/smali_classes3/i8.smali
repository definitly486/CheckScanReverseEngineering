.class public final synthetic Li8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;
.implements Lyads/st3;
.implements Lyads/jv;


# direct methods
.method public static b(FFFF)F
    .locals 0

    sub-float/2addr p0, p1

    mul-float/2addr p0, p2

    add-float/2addr p0, p3

    return p0
.end method

.method public static bridge synthetic c(Ljava/lang/Object;)Landroid/adservices/adselection/AdSelectionManager;
    .locals 0

    check-cast p0, Landroid/adservices/adselection/AdSelectionManager;

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static bridge synthetic e(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Landroid/text/PrecomputedText;

    return p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Lyads/kv;
    .locals 0

    invoke-static {p1}, Lyads/sb0;->a(Landroid/os/Bundle;)Lyads/sb0;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/util/List;)Z
    .locals 0

    .line 5
    invoke-static {p1}, Lyads/l62;->b(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public extract(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/firebase/FirebaseCommonRegistrar;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
