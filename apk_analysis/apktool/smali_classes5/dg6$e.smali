.class public final Ldg6$e;
.super Ldg6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldg6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final a:Ldg6$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldg6$e;

    invoke-direct {v0}, Ldg6;-><init>()V

    sput-object v0, Ldg6$e;->a:Ldg6$e;

    return-void
.end method
