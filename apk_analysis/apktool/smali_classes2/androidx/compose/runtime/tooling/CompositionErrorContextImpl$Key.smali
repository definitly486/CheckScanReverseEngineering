.class public final Landroidx/compose/runtime/tooling/CompositionErrorContextImpl$Key;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo22$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo22$b<",
        "Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl$Key;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "CompositionErrorContext"

    return-object p0
.end method
