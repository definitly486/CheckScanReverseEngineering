.class public abstract Landroidx/compose/ui/text/LinkAnnotation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/AnnotatedString$Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/LinkAnnotation$Clickable;,
        Landroidx/compose/ui/text/LinkAnnotation$Url;
    }
.end annotation


# static fields
.field public static final $stable:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/LinkAnnotation;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLinkInteractionListener()Landroidx/compose/ui/text/LinkInteractionListener;
.end method

.method public abstract getStyles()Landroidx/compose/ui/text/TextLinkStyles;
.end method
