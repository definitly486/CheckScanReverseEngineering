.class public final Landroidx/compose/ui/text/font/DefaultFontFamily;
.super Landroidx/compose/ui/text/font/SystemFontFamily;
.source "SourceFile"


# static fields
.field public static final $stable:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/text/font/SystemFontFamily;-><init>(Ljh2;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "FontFamily.Default"

    return-object p0
.end method
