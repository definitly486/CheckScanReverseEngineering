.class public final synthetic Landroidx/compose/material3/internal/CalendarModelImpl$EntriesMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/internal/CalendarModelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "EntriesMappings"
.end annotation


# static fields
.field public static final synthetic entries$0:Lg03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg03<",
            "Ljava/time/DayOfWeek;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/time/DayOfWeek;->values()[Ljava/time/DayOfWeek;

    move-result-object v0

    invoke-static {v0}, Lh03;->a([Ljava/lang/Enum;)Li03;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/internal/CalendarModelImpl$EntriesMappings;->entries$0:Lg03;

    return-void
.end method
