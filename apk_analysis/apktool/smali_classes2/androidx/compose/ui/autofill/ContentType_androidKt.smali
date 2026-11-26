.class public final Landroidx/compose/ui/autofill/ContentType_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/ContentType;
    .locals 1

    new-instance v0, Landroidx/compose/ui/autofill/AndroidContentType;

    invoke-static {p0}, Ll1;->f(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/compose/ui/autofill/AndroidContentType;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static final getContentHints(Landroidx/compose/ui/autofill/ContentType;)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/compose/ui/autofill/AndroidContentType;

    invoke-virtual {p0}, Landroidx/compose/ui/autofill/AndroidContentType;->getAndroidAutofillHints()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
