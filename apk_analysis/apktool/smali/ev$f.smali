.class public final Lev$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lev;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final a:Lev$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lev$f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lev$f;->a:Lev$f;

    return-void
.end method
