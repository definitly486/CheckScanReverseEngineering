.class public final Ldg6$h;
.super Ldg6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldg6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# static fields
.field public static final a:Ldg6$h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldg6$h;

    invoke-direct {v0}, Ldg6;-><init>()V

    sput-object v0, Ldg6$h;->a:Ldg6$h;

    return-void
.end method
