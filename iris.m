classdef iris < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        GliomaIDHMutationDiagnosisToolUIFigure  matlab.ui.Figure
        MR_Spectroscopy               matlab.ui.container.TabGroup
        ManualEntryTab                matlab.ui.container.Tab
        ManualEntryPan                matlab.ui.container.Panel
        Classify                      matlab.ui.control.Button
        EnterButton                   matlab.ui.control.Button
        MetaboliteMenuDropDown        matlab.ui.control.DropDown
        Image2                        matlab.ui.control.Image
        EditField                     matlab.ui.control.EditField
        ListBox                       matlab.ui.control.ListBox
        Tree3                         matlab.ui.container.Tree
        modelsd                       matlab.ui.container.TreeNode
        MetaboliteConcentrationEntryLabel  matlab.ui.control.Label
        Image9                        matlab.ui.control.Image
        BacktoMainMenuLabel           matlab.ui.control.Label
        ModelMetricsPanel             matlab.ui.container.Panel
        ListBox_2                     matlab.ui.control.ListBox
        Image8                        matlab.ui.control.Image
        Image8_2                      matlab.ui.control.Image
        Image8_3                      matlab.ui.control.Image
        AccuracyLabel                 matlab.ui.control.Label
        SpecificityLabel              matlab.ui.control.Label
        SensitivityLabel              matlab.ui.control.Label
        NaNLabel                      matlab.ui.control.Label
        NaNLabel_2                    matlab.ui.control.Label
        NaNLabel_3                    matlab.ui.control.Label
        Image15                       matlab.ui.control.Image
        ResultLabel                   matlab.ui.control.Label
        NaNLabel_4                    matlab.ui.control.Label
        MainMenuPanel                 matlab.ui.container.Panel
        ManualEntryButton             matlab.ui.control.Button
        ExcelEntryButton              matlab.ui.control.Button
        LCModelEntryButton            matlab.ui.control.Button
        PlotsButton                   matlab.ui.control.Button
        ExcelEntryPanel               matlab.ui.container.Panel
        ButtonPanel                   matlab.ui.container.Panel
        progressbar                   matlab.ui.control.UIAxes
        LoadButton                    matlab.ui.control.Button
        ClassifyButton                matlab.ui.control.Button
        ExportClassesButton           matlab.ui.control.Button
        Image10                       matlab.ui.control.Image
        BacktoMainMenuLabel_2         matlab.ui.control.Label
        ProcessingLabel               matlab.ui.control.Label
        ModelsListBox_3Label          matlab.ui.control.Label
        ModelsListBox_3               matlab.ui.control.ListBox
        LoadButton_4                  matlab.ui.control.Button
        UITableExcelEntry             matlab.ui.control.Table
        Class1Label                   matlab.ui.control.Label
        Class2Label                   matlab.ui.control.Label
        PlotsPanel                    matlab.ui.container.Panel
        PlotsMenuPanel                matlab.ui.container.Panel
        ModelPlots                    matlab.ui.control.Button
        LCMODELPLOTS                  matlab.ui.control.Button
        ExcelPlots                    matlab.ui.control.Button
        Image11                       matlab.ui.control.Image
        BacktoMainMenuLabel_3         matlab.ui.control.Label
        plottingpanels1               matlab.ui.container.Panel
        plottingpanels2               matlab.ui.container.Panel
        ModelPlotsPanel               matlab.ui.container.Panel
        RefreshButton_2               matlab.ui.control.Button
        PlotButton_3                  matlab.ui.control.Button
        ModelsListBoxLabel            matlab.ui.control.Label
        ModelsListBox                 matlab.ui.control.ListBox
        Image12                       matlab.ui.control.Image
        Image12_2                     matlab.ui.control.Image
        BacktoMainMenuLabel_4         matlab.ui.control.Label
        BacktopreviousMenuLabel       matlab.ui.control.Label
        LCModelPlotsPanel             matlab.ui.container.Panel
        LoadButton_2                  matlab.ui.control.Button
        PlotButton_4                  matlab.ui.control.Button
        Image13                       matlab.ui.control.Image
        Image13_2                     matlab.ui.control.Image
        BacktoMainMenuLabel_5         matlab.ui.control.Label
        BacktoPreviousMenuLabel       matlab.ui.control.Label
        MetabolitesListBoxLabel       matlab.ui.control.Label
        MetabolitesListBox            matlab.ui.control.ListBox
        ExcelPlotPanel                matlab.ui.container.Panel
        TabGroup3                     matlab.ui.container.TabGroup
        DataTab                       matlab.ui.container.Tab
        LoadButton_6                  matlab.ui.control.Button
        UITable4                      matlab.ui.control.Table
        AssignButton                  matlab.ui.control.Button
        ListBox_5Label                matlab.ui.control.Label
        ListBox_5                     matlab.ui.control.ListBox
        GroupingFeatureLabel          matlab.ui.control.Label
        DropDown                      matlab.ui.control.DropDown
        Image24                       matlab.ui.control.Image
        BacktoPlotsMenuLabel          matlab.ui.control.Label
        greenLabel                    matlab.ui.control.Label
        blueLabel                     matlab.ui.control.Label
        PlotsTab                      matlab.ui.container.Tab
        excelpanel                    matlab.ui.container.Panel
        Plot                          matlab.ui.control.Button
        PlotsButtonGroup              matlab.ui.container.ButtonGroup
        VariablePlotButton_2          matlab.ui.control.ToggleButton
        SpiderPlotButton_2            matlab.ui.control.ToggleButton
        PCAPlotButton                 matlab.ui.control.ToggleButton
        BoxPlotButton_2               matlab.ui.control.ToggleButton
        BarPlotButton                 matlab.ui.control.ToggleButton
        LinePlotButton                matlab.ui.control.ToggleButton
        ConfidenceIntervalCheckBox    matlab.ui.control.CheckBox
        ScatterCheckBox               matlab.ui.control.CheckBox
        CI                            matlab.ui.control.NumericEditField
        MergeCheckBox_2               matlab.ui.control.CheckBox
        CompactCheckBox               matlab.ui.control.CheckBox
        PCDimensionSpinnerLabel       matlab.ui.control.Label
        PCDimensionSpinner            matlab.ui.control.Spinner
        Feature1DropDownLabel         matlab.ui.control.Label
        Feature1DropDown              matlab.ui.control.DropDown
        Feature2DropDownLabel         matlab.ui.control.Label
        Feature2DropDown              matlab.ui.control.DropDown
        ResultsPanel                  matlab.ui.container.Panel
        LCModelEntryPanel             matlab.ui.container.Panel
        LoadButton_3                  matlab.ui.control.Button
        ClassifyButton_2              matlab.ui.control.Button
        ModelsListBox_2Label          matlab.ui.control.Label
        ModelsListBox_2               matlab.ui.control.ListBox
        CoordFilesListBoxLabel        matlab.ui.control.Label
        CoordFilesListBox             matlab.ui.control.ListBox
        Image14                       matlab.ui.control.Image
        BacktoMainMenuLabel_6         matlab.ui.control.Label
        MR_Diffusion                  matlab.ui.container.TabGroup
        Tab_3                         matlab.ui.container.Tab
        Tab2_3                        matlab.ui.container.Tab
        Tree                          matlab.ui.container.Tree
        NormalUserNode                matlab.ui.container.TreeNode
        MRSpectroscopyNode            matlab.ui.container.TreeNode
        MassSpectroscopyNode          matlab.ui.container.TreeNode
        AdvancedUserNode              matlab.ui.container.TreeNode
        AboutNode                     matlab.ui.container.TreeNode
        AdvancedUser                  matlab.ui.container.TabGroup
        TrainerTab                    matlab.ui.container.Tab
        trainertab                    matlab.ui.container.TabGroup
        VariablePlotsTab              matlab.ui.container.Tab
        trainerpanel                  matlab.ui.container.Panel
        Variable1DropDownLabel        matlab.ui.control.Label
        Variable1DropDown             matlab.ui.control.DropDown
        Variable2DropDownLabel        matlab.ui.control.Label
        Variable2DropDown             matlab.ui.control.DropDown
        plots_2                       matlab.ui.control.Button
        PLOTSButtonGroup              matlab.ui.container.ButtonGroup
        VariablePlotButton            matlab.ui.control.ToggleButton
        SpiderPlotButton              matlab.ui.control.ToggleButton
        BoxPlotButton                 matlab.ui.control.ToggleButton
        LinePlotButton_3              matlab.ui.control.ToggleButton
        CompactCheckBox_3             matlab.ui.control.CheckBox
        MeanSpiderCheckBox            matlab.ui.control.CheckBox
        MergeCheckBox                 matlab.ui.control.CheckBox
        BarPlotButton_3               matlab.ui.control.ToggleButton
        ScatterCheck                  matlab.ui.control.CheckBox
        CISpinnerLabel                matlab.ui.control.Label
        CISpinner                     matlab.ui.control.Spinner
        CheckBox                      matlab.ui.control.CheckBox
        PCAPlotButton_3               matlab.ui.control.ToggleButton
        DimensionSpinnerLabel         matlab.ui.control.Label
        DimensionSpinner              matlab.ui.control.Spinner
        Image16                       matlab.ui.control.Image
        BacktomainmenuLabel           matlab.ui.control.Label
        Image16_2                     matlab.ui.control.Image
        BacktopreviousmenuLabel       matlab.ui.control.Label
        ModelPlotsTab                 matlab.ui.container.Tab
        Panel_2                       matlab.ui.container.Panel
        MODELSListBox_3Label          matlab.ui.control.Label
        MODELSListBox_3               matlab.ui.control.ListBox
        RefreshButton                 matlab.ui.control.Button
        PlotButton_2                  matlab.ui.control.Button
        TrainingPanel                 matlab.ui.container.Panel
        KNN                           matlab.ui.container.Panel
        Image5                        matlab.ui.control.Image
        WeightedKNNLabel              matlab.ui.control.Label
        CoarseKNNLabel                matlab.ui.control.Label
        Image5_5                      matlab.ui.control.Image
        fineknn                       matlab.ui.control.Image
        FineKNNLabel                  matlab.ui.control.Label
        fineknn_2                     matlab.ui.control.Image
        CubicKNNLabel                 matlab.ui.control.Label
        fineknn_3                     matlab.ui.control.Image
        CosineKNNLabel                matlab.ui.control.Label
        SVM                           matlab.ui.container.Panel
        linearsvm                     matlab.ui.control.Image
        LinearSVMLabel                matlab.ui.control.Label
        QuadraticSVMLabel             matlab.ui.control.Label
        quadraticsvm                  matlab.ui.control.Image
        Image5_4                      matlab.ui.control.Image
        CubicSVMLabel                 matlab.ui.control.Label
        Image5_6                      matlab.ui.control.Image
        FineGaussianSVMLabel          matlab.ui.control.Label
        Image5_7                      matlab.ui.control.Image
        MediumGaussianSVMLabel        matlab.ui.control.Label
        Forest                        matlab.ui.container.Panel
        CoarseTree                    matlab.ui.control.Image
        MediumTree                    matlab.ui.control.Image
        MediumTreeLabel               matlab.ui.control.Label
        CoarseTreeLabel               matlab.ui.control.Label
        CoarseTree_2                  matlab.ui.control.Image
        FineTreeLabel                 matlab.ui.control.Label
        Ensemble                      matlab.ui.container.Panel
        BoostedTrees                  matlab.ui.control.Image
        BoostedTreesLabel             matlab.ui.control.Label
        BaggedTree                    matlab.ui.control.Image
        BaggedTreesLabel              matlab.ui.control.Label
        Discriminant                  matlab.ui.control.Image
        DiscriminantLabel             matlab.ui.control.Label
        RUSB                          matlab.ui.control.Image
        RUSBoostedLabel               matlab.ui.control.Label
        KFoldCrossValidationLabel     matlab.ui.control.Label
        Image18                       matlab.ui.control.Image
        Spinner                       matlab.ui.control.Spinner
        Image18_2                     matlab.ui.control.Image
        Image19                       matlab.ui.control.Image
        BacktoMainMenuLabel_8         matlab.ui.control.Label
        Image19_2                     matlab.ui.control.Image
        BacktoPreviousMenuLabel_2     matlab.ui.control.Label
        HoldOutSliderLabel            matlab.ui.control.Label
        HoldOutSlider                 matlab.ui.control.Slider
        RunAllButton                  matlab.ui.control.Button
        RunADASYNButton               matlab.ui.control.Button
        RankFeaturesButton            matlab.ui.control.Button
        ListBox_6                     matlab.ui.control.ListBox
        FeaturesRankDescendingOrderLabel  matlab.ui.control.Label
        SelectasPredictorsButton      matlab.ui.control.Button
        SelectedFeaturesLabel         matlab.ui.control.Label
        SequentialFeatureSelectionButton  matlab.ui.control.Button
        RunsSpinner                   matlab.ui.control.Spinner
        RunsSpinnerLabel              matlab.ui.control.Label
        ReportTrainer                 matlab.ui.container.Panel
        ReportAll                     matlab.ui.control.Button
        AdvancedMenuPanel             matlab.ui.container.Panel
        UITable2                      matlab.ui.control.Table
        Panel_3                       matlab.ui.container.Panel
        RESPONSEListBoxLabel          matlab.ui.control.Label
        RESPONSEListBox               matlab.ui.control.ListBox
        trainer32                     matlab.ui.control.Button
        PREDICTORSListBoxLabel        matlab.ui.control.Label
        PREDICTORSListBox             matlab.ui.control.ListBox
        TrainerLoad                   matlab.ui.control.Button
        predictor                     matlab.ui.control.Button
        plots_3                       matlab.ui.control.Button
        Image17                       matlab.ui.control.Image
        BacktoMainMenuLabel_7         matlab.ui.control.Label
        ResponseDropDownLabel         matlab.ui.control.Label
        ResponseDropDown              matlab.ui.control.DropDown
        ApplyCRLBThresholdMRSpectroscopyButton  matlab.ui.control.Button
        Selectsubtab                  matlab.ui.control.Button
        PredictorsLabel               matlab.ui.control.Label
        ResponseLabel                 matlab.ui.control.Label
        UITable5                      matlab.ui.control.Table
        ModelParametersPanel          matlab.ui.container.Panel
        Tree2                         matlab.ui.container.Tree
        models2                       matlab.ui.container.TreeNode
        Node2                         matlab.ui.container.TreeNode
        advancedList                  matlab.ui.control.ListBox
        advancedPlot                  matlab.ui.control.Button
        SubplotCheckBox               matlab.ui.control.CheckBox
        advancedPanel                 matlab.ui.container.Panel
        Image22                       matlab.ui.control.Image
        BacktoMainMenuLabel_11        matlab.ui.control.Label
        advancedPlot_2                matlab.ui.control.Button
        ListBox_10                    matlab.ui.control.ListBox
        MainMenuPanel_2               matlab.ui.container.Panel
        TrainNewModelButton           matlab.ui.control.Button
        TrainedModelsButton           matlab.ui.control.Button
        PlotsButton_2                 matlab.ui.control.Button
        Image20                       matlab.ui.control.Image
        ClicktoLoadDataLabel          matlab.ui.control.Label
        BacktoMainMenuLabel_9         matlab.ui.control.Label
        Image20_2                     matlab.ui.control.Image
        modelsPlotALLadvanced         matlab.ui.container.Panel
        modelsplotpaneladvanced       matlab.ui.container.Panel
        RefreshButton_3               matlab.ui.control.Button
        PlotButton_5                  matlab.ui.control.Button
        Image25                       matlab.ui.control.Image
        BacktoMainMenuLabel_13        matlab.ui.control.Label
        ModelsListBox_4Label          matlab.ui.control.Label
        ModelsListBox_4               matlab.ui.control.ListBox
        Panel_5                       matlab.ui.container.Panel
        Classifier                    matlab.ui.container.Tab
        ClassifierMainPanel           matlab.ui.container.Panel
        Image21                       matlab.ui.control.Image
        TableEntryLabel               matlab.ui.control.Label
        Image21_2                     matlab.ui.control.Image
        SingleDataPointEntryLabel     matlab.ui.control.Label
        ExcelEntry                    matlab.ui.container.Panel
        UITable3                      matlab.ui.control.Table
        LoadButton_5                  matlab.ui.control.Button
        MODELSListBox_4Label          matlab.ui.control.Label
        MODELSListBox_4               matlab.ui.control.ListBox
        ClassifyButton_3              matlab.ui.control.Button
        ExportClassesButton_2         matlab.ui.control.Button
        Image23                       matlab.ui.control.Image
        BacktoMainMenuLabel_12        matlab.ui.control.Label
        Class1Label_2                 matlab.ui.control.Label
        Class2Label_2                 matlab.ui.control.Label
        RowsabovethethresholdLabel    matlab.ui.control.Label
        ManualPanel                   matlab.ui.container.Panel
        Classify_2                    matlab.ui.control.Button
        EnterButton_2                 matlab.ui.control.Button
        MetaboliteMenuDropDown_2      matlab.ui.control.DropDown
        EditField_2                   matlab.ui.control.EditField
        ListBox_3                     matlab.ui.control.ListBox
        Tree3_2                       matlab.ui.container.Tree
        modelsd_2                     matlab.ui.container.TreeNode
        PredictorsLabel_2             matlab.ui.control.Label
        Image9_2                      matlab.ui.control.Image
        BacktoMainMenuLabel_10        matlab.ui.control.Label
        ModelMetricsPanel_2           matlab.ui.container.Panel
        ListBox_4                     matlab.ui.control.ListBox
        Image8_4                      matlab.ui.control.Image
        Image8_5                      matlab.ui.control.Image
        Image8_6                      matlab.ui.control.Image
        AccuracyLabel_2               matlab.ui.control.Label
        SpecificityLabel_2            matlab.ui.control.Label
        SensitivityLabel_2            matlab.ui.control.Label
        NaNLabel_5                    matlab.ui.control.Label
        NaNLabel_6                    matlab.ui.control.Label
        NaNLabel_7                    matlab.ui.control.Label
        Image15_2                     matlab.ui.control.Image
        ResultLabel_2                 matlab.ui.control.Label
        NaNLabel_8                    matlab.ui.control.Label
        About                         matlab.ui.container.TabGroup
        AcknowledgementsTab           matlab.ui.container.Tab
        Label                         matlab.ui.control.Label
        Image4                        matlab.ui.control.Image
        Image4_2                      matlab.ui.control.Image
        ProjectTeamTab                matlab.ui.container.Tab
        Image3                        matlab.ui.control.Image
        PublicationsTab               matlab.ui.container.Tab
        PublicationsLabel             matlab.ui.control.Label
        Label_2                       matlab.ui.control.Label
        Label_3                       matlab.ui.control.Label
        Label_4                       matlab.ui.control.Label
        Label_5                       matlab.ui.control.Label
        Label_6                       matlab.ui.control.Label
        Label_7                       matlab.ui.control.Label
        Label_8                       matlab.ui.control.Label
        Label_9                       matlab.ui.control.Label
        Label_10                      matlab.ui.control.Label
        MassSpectroscopy              matlab.ui.container.TabGroup
        MassSpectroscopyTab           matlab.ui.container.Tab
        ManualEntryPan_2              matlab.ui.container.Panel
        Classify_3                    matlab.ui.control.Button
        EnterButton_3                 matlab.ui.control.Button
        MetaboliteMenuDropDown_3      matlab.ui.control.DropDown
        Image2_2                      matlab.ui.control.Image
        EditField_3                   matlab.ui.control.EditField
        ListBox_7                     matlab.ui.control.ListBox
        Tree3_3                       matlab.ui.container.Tree
        modelsd_3                     matlab.ui.container.TreeNode
        MetaboliteConcentrationEntryLabel_2  matlab.ui.control.Label
        Image9_3                      matlab.ui.control.Image
        BacktoMainMenuLabel_14        matlab.ui.control.Label
        ModelMetricsPanel_3           matlab.ui.container.Panel
        ListBox_8                     matlab.ui.control.ListBox
        Image8_7                      matlab.ui.control.Image
        Image8_8                      matlab.ui.control.Image
        Image8_9                      matlab.ui.control.Image
        AccuracyLabel_3               matlab.ui.control.Label
        SpecificityLabel_3            matlab.ui.control.Label
        SensitivityLabel_3            matlab.ui.control.Label
        NaNLabel_9                    matlab.ui.control.Label
        NaNLabel_10                   matlab.ui.control.Label
        NaNLabel_11                   matlab.ui.control.Label
        Image15_3                     matlab.ui.control.Image
        ResultLabel_3                 matlab.ui.control.Label
        NaNLabel_12                   matlab.ui.control.Label
        MainMenuPanel_3               matlab.ui.container.Panel
        ManualEntryButton_2           matlab.ui.control.Button
        ExcelEntryButton_2            matlab.ui.control.Button
        PlotsButton_3                 matlab.ui.control.Button
        ExcelEntryPanel_2             matlab.ui.container.Panel
        ButtonPanel_2                 matlab.ui.container.Panel
        progressbar_2                 matlab.ui.control.UIAxes
        LoadButton_7                  matlab.ui.control.Button
        ClassifyButton_4              matlab.ui.control.Button
        ExportClassesButton_3         matlab.ui.control.Button
        Image10_2                     matlab.ui.control.Image
        BacktoMainMenuLabel_15        matlab.ui.control.Label
        ProcessingLabel_2             matlab.ui.control.Label
        ModelsListBox_5Label          matlab.ui.control.Label
        ModelsListBox_5               matlab.ui.control.ListBox
        LoadButton_8                  matlab.ui.control.Button
        UITableExcelEntry_2           matlab.ui.control.Table
        Class1Label_3                 matlab.ui.control.Label
        Class2Label_3                 matlab.ui.control.Label
        PlotsPanel_2                  matlab.ui.container.Panel
        PlotsMenuPanel_2              matlab.ui.container.Panel
        ModelPlots_2                  matlab.ui.control.Button
        LCMODELPLOTS_2                matlab.ui.control.Button
        ExcelPlots_2                  matlab.ui.control.Button
        Image11_2                     matlab.ui.control.Image
        BacktoMainMenuLabel_16        matlab.ui.control.Label
        plottingpanels1_2             matlab.ui.container.Panel
        plottingpanels2_2             matlab.ui.container.Panel
        ModelPlotsPanel_2             matlab.ui.container.Panel
        RefreshButton_4               matlab.ui.control.Button
        PlotButton_6                  matlab.ui.control.Button
        ModelsListBox_6Label          matlab.ui.control.Label
        ModelsListBox_6               matlab.ui.control.ListBox
        Image12_3                     matlab.ui.control.Image
        Image12_4                     matlab.ui.control.Image
        BacktoMainMenuLabel_17        matlab.ui.control.Label
        BacktopreviousMenuLabel_2     matlab.ui.control.Label
        LCModelPlotsPanel_2           matlab.ui.container.Panel
        LoadButton_9                  matlab.ui.control.Button
        PlotButton_7                  matlab.ui.control.Button
        Image13_3                     matlab.ui.control.Image
        Image13_4                     matlab.ui.control.Image
        BacktoMainMenuLabel_18        matlab.ui.control.Label
        BacktoPreviousMenuLabel_3     matlab.ui.control.Label
        MetabolitesListBox_2Label     matlab.ui.control.Label
        MetabolitesListBox_2          matlab.ui.control.ListBox
        ExcelPlotPanel_2              matlab.ui.container.Panel
        TabGroup3_2                   matlab.ui.container.TabGroup
        DataTab_2                     matlab.ui.container.Tab
        LoadButton_10                 matlab.ui.control.Button
        UITable4_2                    matlab.ui.control.Table
        AssignButton_2                matlab.ui.control.Button
        ListBox_5Label_2              matlab.ui.control.Label
        ListBox_9                     matlab.ui.control.ListBox
        GroupingFeatureLabel_2        matlab.ui.control.Label
        DropDown_2                    matlab.ui.control.DropDown
        Image24_2                     matlab.ui.control.Image
        BacktoPlotsMenuLabel_2        matlab.ui.control.Label
        greenLabel_2                  matlab.ui.control.Label
        blueLabel_2                   matlab.ui.control.Label
        PlotsTab_2                    matlab.ui.container.Tab
        excelpanel_2                  matlab.ui.container.Panel
        Plot_2                        matlab.ui.control.Button
        PlotsButtonGroup_2            matlab.ui.container.ButtonGroup
        VariablePlotButton_3          matlab.ui.control.ToggleButton
        SpiderPlotButton_3            matlab.ui.control.ToggleButton
        PCAPlotButton_2               matlab.ui.control.ToggleButton
        BoxPlotButton_3               matlab.ui.control.ToggleButton
        BarPlotButton_2               matlab.ui.control.ToggleButton
        LinePlotButton_2              matlab.ui.control.ToggleButton
        ConfidenceIntervalCheckBox_2  matlab.ui.control.CheckBox
        ScatterCheckBox_2             matlab.ui.control.CheckBox
        CI_2                          matlab.ui.control.NumericEditField
        MergeCheckBox_3               matlab.ui.control.CheckBox
        CompactCheckBox_2             matlab.ui.control.CheckBox
        PCDimensionSpinner_2Label     matlab.ui.control.Label
        PCDimensionSpinner_2          matlab.ui.control.Spinner
        Feature1DropDown_2Label       matlab.ui.control.Label
        Feature1DropDown_2            matlab.ui.control.DropDown
        Feature2DropDown_2Label       matlab.ui.control.Label
        Feature2DropDown_2            matlab.ui.control.DropDown
        ResultsPanel_2                matlab.ui.container.Panel
        Image26                       matlab.ui.control.Image
        Image26_2                     matlab.ui.control.Image
        UserManualLabel               matlab.ui.control.Label
        DocumentationLabel            matlab.ui.control.Label
        Panel_6                       matlab.ui.container.Panel
    end

    
    properties (Access = private)
        tabledata,metabs,corrMatrix,sp,bg,fit,coord_filename;
        indices;
        net;
        net2;
        net3;
        manualControl;
        IDHIndices;
        TERTIndices;
        DoubleIndices;
        VAL=[9,12,13,14,33];
        manualValues;
        ax;
        ax2; % Description
        position; % Description
        % Description
        pt_axis; % Description
        % Description
        trainerCount=0;
        % Description
        trainerResp;
        % Description
        trainerPredictors; % Description
        models=struct; % Description
        
        Defmodels; % Description
        
        TrueClass=[]; % Description
        
        
        row; % Description
        excelPredictors; % Description
        excelResp; % Excel Response
        
        DefMassmodels; % It is the struct that stores default mass models
        plottype=0; % Plot type is the MASS/MR Spectroscopy shifting
        
        featureselection; % Last applied feature selection
        confirmedSelection; % Confirmed Selection
        Features; % Description
        % Description
        outAll={}; %All reports merged together
        variablesOut; % Description
        iterations={}; %Iteratÿon counter
        groups={}  %Iteratÿon groups
        groupSz={} % Iteratÿon groupsize
        % Description
        % Description
        subindices; % This is for subselection at advanced user
        % Description
    end
    
    properties (Access = public)
        deen="aasd" % Description
        reqVars;
        crlb=-1;
        reqVars2;
        auto=0;
        automodels; % Description
        out; % reported table which is generated from run all process
        currentModel; % Lastly trained model
        
    end
    
    methods (Access = public)
        
        function vargout=radarPlot(app,P,axis2, varargin )
            %%% Get the number of dimensions and points
            
            [M, N] = size(P);
            %%% Plot the axes
            % Radial offset per axis
            th = (2*pi/M)*(ones(2,1)*(M:-1:1));
            % Axis start and end
            r = [0;1]*ones(1,M);
            % Conversion to cartesian coordinates to plot using regular plot.
            [x,y] = pol2cart(th, r);
            %             hLine = line(axis2,x, y,...
            %                 'LineWidth', 1.5,...
            %                 'Color', [1, 1, 1]*0.5  );
            %             for i = 1:numel(hLine)
            %                 set(get(get(hLine(i),'Annotation'),'LegendInformation'),...
            %                     'IconDisplayStyle','off'); % Exclude line from legend
            %             end
            toggle = ~ishold;
            if toggle
                hold on
            end
            %%% Plot axes isocurves
            % Radial offset per axis
            th = (2*pi/M)*(ones(9,1)*(M:-1:1));
            % Axis start and end
            r = (linspace(0.1, 0.9, 9)')*ones(1,M);
            % Conversion to cartesian coordinates to plot using regular plot.
            [x,y] = pol2cart(th, r);
            %             hLine = line(axis2,[x, x(:,1)]', [y, y(:,1)]',...
            %                 'LineWidth', 1,...
            %                 'Color', [1, 1, 1]*0.5  );
            %             for i = 1:numel(hLine)
            %                 set(get(get(hLine(i),'Annotation'),'LegendInformation'),...
            %                     'IconDisplayStyle','off'); % Exclude line from legend
            %             end
            %%% Insert axis labels
            % Compute minimum and maximum per axis
            
            minV = min(P,[],2);
            maxV = max(P,[],2);
            for j = 1:M
                % Generate the axis label
                msg = sprintf('x{%d} = %5.2f ... %5.2f',...
                    j, minV(j), maxV(j));
                [mx, my] = pol2cart( th(1, j), 1.1);
                text(axis2,mx, my, msg);
            end
            axis([-1,1,-1,1]*1.5)
            % Hold on to plot data points
            hold on
            % Radius
            R = 0.8*((P - (minV*ones(1,N)))./((maxV-minV)*ones(1,N))) + 0.1;
            R = [R; R(1,:)];
            Th = (2*pi/M) * ((M:-1:0)'*ones(1,N));
            % polar(Th, R)
            [X, Y] = pol2cart(Th, R);
            h = plot(axis2,X, Y);
            axis([-1,1,-1,1]);
            axis square;
            axis off;
            if toggle
                hold off
            end
            if nargout > 0
                varargout{1} = h;
            end
            
        end
        
        
        
        function [tabledata,metabs,corrMatrix,sp,bg,fit,coord_filename]= load_lcmodel(app)
            
            [file,folder] = uigetfile('*.coord','MultiSelect',"on");
            
            
            file=cellstr(string(file));
            folder=cellstr(string(folder));
            
            for i=1:length(file)
                %dirs=dir([folder '\*'])
                
                %irs=dirs((~[dirs(:).isdir]))
                splitted=strsplit((file{i}),'.coord');
                %directories=strsplit([dirs(1).folder filesep   dirs(1).name],'.coord')
                %x=zeros(1,272), x(1:2:end)=1, x2=vec2mat(x,17),x3=x2(1:16,1:16)
                mainText=[folder{:} filesep   splitted{1}];
                
                
                
                
                %dirs=dir([folder,'\1\35ms\sl' int2str(x(1,i)) '_' int2str(x(2,i)) '-' int2str(x(3,i)) '.coord'])
                
                figurelist=''; % Define patient protocol numbers
                
                
                
                
                %vox_name=sprintf('sl1_%d-%d',slx,sly);
                %vox={vox_name};
                PID=(figurelist);
                %voxname=char(vox(m));
                %cd(PID);
                % coord_filename=strcat(PID,'.coord');
                % output_filename=strcat(PID,'.print');
                coord_filename{i}=[mainText '.coord'];
                output_filename=strcat(mainText,'.print');
                
                % Read metabolite details and correlation coefficients table
                [metabs{i},corrMatrix{i}]=io_loadlcmdetail(output_filename);
                
                [bg{i}]=io_readlcmcoord_getBackground(coord_filename{i},'bg');
                ppm=bg{i}.ppm;
                ind=1;
                
                [fit{i}]=io_readlcmcoord_getBackground(coord_filename{i},'fit');
                fit{i}.specs=fit{i}.specs-bg{i}.specs;
                [sp{i}]=io_readlcmcoord_getBackground(coord_filename{i},'sp');
                
                tabledata{i}=mrs_readLcmodelTABLE(strcat(mainText,'.table'));
                %table_res{1,tot_vox}=tabledata;
                %%
                % Create a line plot of all metabolites minus the background
                %figx=figure('units','centimeters','outerposition',[0 0 50 30]);
                
                
                
            end
            
        end
        
        
        
        function results = axClick(app,varargin)
            
            
            if varargin{2}.Button==3
                
                answer = questdlg('Choose the process', ...
                    'Processes', ...
                    'Title Changes','Zoom In','More..','Zoom In');
                % Handle response
                
                switch answer
                    
                    case 'Title Changes'
                        app.titleChange(varargin{1});
                        
                    case 'Zoom In'
                        
                        app.zoomInOut(answer,varargin{1});
                        
                    case 'More..'
                        plotMa(varargin{1},'EditType','Advanced')
                        %app.export(varargin{1});
                        
                end
            else
                
                
                
                
                
                
            end
            
            
        end
        
        function results = RestoreZoom(app,varargin)
            if varargin{2}.Button==3
                answer = questdlg('Choose the process', ...
                    'Processes', ...
                    'Title Changes','Zoom Out','More..','Zoom Out');
                % Handle response
                
                switch answer
                    
                    case 'Title Changes'
                        app.titleChange(varargin{1});
                        
                    case 'Zoom Out'
                        
                        app.zoomInOut(answer,varargin{1});
                        
                        
                    case 'More..'
                        plotMa(varargin{1},'EditType','Advanced')
                end
            end
        end
        
        
        function results = titleChange(app,varargin)
            xx = inputdlg({'Axes Title','X Title','Y Title'},...
                'Titles', [1 50; 1 50; 1 50]);
            varargin{1}.Title.String=[ xx{1}];
            varargin{1}.XLabel.String=[ xx{2}];
            varargin{1}.YLabel.String=[ xx{3}];
            varargin{1}.Title.ButtonDownFcn=@textHandler;
            varargin{1}.XLabel.ButtonDownFcn=@textHandler;
            varargin{1}.YLabel.ButtonDownFcn=@textHandler;
        end
        
        
        
        function results = zoomInOut(app,answer,varargin)
            
            varargin{1}
            switch answer
                case "Zoom Out"
                    
                    for a=1:length(app.ax)
                        try
                            set(app.ax{a},'OuterPosition',app.position{a});
                        catch
                            app.ax
                            app.position
                            set(app.ax,'OuterPosition',app.position);
                            
                        end
                    end
                    
                    
                    varargin{1}.ButtonDownFcn=@app.axClick;
                case "Zoom In"
                    for a=1:length(app.ax)
                        set( app.ax{a},'OuterPosition',[0 0 0 0]);
                    end
                    set( varargin{1},'OuterPosition',[0 0 1 1]);
                    varargin{1}.ButtonDownFcn=@app.RestoreZoom;
            end
            
        end
        
        function results = export(app,varargin)
            
            xx = inputdlg({'Export Quality','Filename'},...
                'Titles', [1 50; 1 50]);
            f=waitbar(0.2,"Exporting");
            
            exportgraphics(varargin{1},xx{2},'ContentType','vector','BackgroundColor','none', 'Resolution',str2num(xx{1}))
            waitbar(1,f,"Finished!");
            pause(0.5);
            close(f);
        end
        
        function results = plotSpectra(app,modplot,i,ppm,linewidth,ax,color,FontSize,varargin)
            
            
            
            app.pt_axis=0;
            ind=1;
            modplot=sort(modplot);
            
            
            for n=modplot
                
                if n>3
                    % Tekrar okumasÿna gerek yok bunu tersten al
                    [out]=io_readlcmcoord(app.coord_filename{i},app.MetabolitesListBox.Items{n}); %Graph of the specific metabolite is taken from coordfile(Ex: Only Glu graph from coord file)
                    
                    
                    if ~isempty(out.specs)
                        spectra_all(ind,:)=out.specs';
                        legendtext{ind}=[ strcat(strjoin(string(app.MetabolitesListBox.Items{n})),'-','SD:',num2str(app.tabledata{i}.SDpct(n-3)),'%')];
                        a=spectra_all(ind,:)-app.bg{i}.specs';
                        
                        
                        b1(ind)=plot(ax,[ppm], [fliplr(a)+app.pt_axis],'LineWidth',linewidth,"Color",color);
                        t=text(app.ax{i},ppm(1)*1.01,a(end)+app.pt_axis, legendtext{ind},"Color",color,"FontSize",FontSize,'VerticalAlignment','middle');
                        set(t,'FontSize',FontSize)
                        
                        ds=t.FontSize;
                        t.ButtonDownFcn=@textHandler;
                        app.pt_axis=app.pt_axis-ds*2;
                        ind=ind+1;
                        hold (ax,"on")
                    else
                        
                        
                        legendtext{ind}=[strcat(strjoin(string(app.MetabolitesListBox.Items{n})),'-','SD:',num2str(app.tabledata{i}.SDpct(n-3)),'%')];
                        %app.pt_axis=app.pt_axis+min(app.pt_axis*0.1,-5);
                        b1(ind)=plot(ax,ppm, ones(size(ppm)).*app.pt_axis,'LineWidth',linewidth,"Color",color);
                        t=text(app.ax{i},ppm(1)*1.01,app.pt_axis, legendtext{ind},"Color",color,"FontSize",FontSize,'VerticalAlignment','middle');
                        t.ButtonDownFcn=@textHandler;
                        set(t,'FontSize',FontSize)
                        
                        ds=t.FontSize;
                        
                        
                        app.pt_axis=app.pt_axis-ds*2;
                        
                        
                        ind=ind+1;
                        hold (ax,"on")
                    end
                elseif n<=3
                    
                    
                    cs={'sp{i}','bg{i}','fit{i}'};
                    legends={'In Vivo','Baseline','Fit'};
                    x=eval(['app.' cs{n}]);
                    
                    b1(ind)=plot(ax,ppm,fliplr(x.specs')+app.pt_axis,'LineWidth',linewidth,"Color",color);
                    
                    t=text(app.ax{i},ppm(1)*1.01,x.specs(end)+app.pt_axis, legends{n},"Color",color,"FontSize",FontSize,'VerticalAlignment','middle');
                    ds=t.FontSize;
                    t.ButtonDownFcn=@textHandler;
                    set(t,'FontSize',FontSize)
                    
                    app.pt_axis=app.pt_axis-ds*2;
                    
                    legendtext{ind}=string(legends{n});
                    ind=ind+1;
                    hold (ax,"on");
                    
                    
                    
                end
                
                
                
            end
            set(ax,'Color',app.plottingpanels1.BackgroundColor);
            finalt=strsplit(string(app.coord_filename{i}),filesep  );
            title(ax,['\color{white}' finalt{end}]);
            set(ax,'ytick',[]);
            set(ax,'yticklabel',[ppm(end):ppm(1)]);
            set(ax,'xtick',linspace(ppm(end),ppm(1),7));
            set(ax,'XColor',color);
            xtickangle(ax,45)
            %set(ax,'XTickRotate')
            dsc=round(linspace(ppm(end),ppm(1),7)-0.01,2);
            cx=strsplit(sprintf("%.2f ",fliplr(dsc))," ");
            
            set(ax,'xticklabel',cx);
            set(ax,'box','off');
            %set(ax,'ticklength',[0,0])
            
            
            xlim(ax,[ppm(end),ppm(1)*1.25]);
            ylim(ax,'auto');
            
            ax.XLabel.String="Chemical Shift (ppm)";
            ax.XLabel.Color=[1 1 1];
            ax.Title.ButtonDownFcn=@textHandler;
            ax.XLabel.ButtonDownFcn=@textHandler;
            pos=get(ax,'Position');
            
            set(ax,'Position',[pos([1,2]) pos(3)/1.5 pos(4)])
            xc=get(ax,'xlim');
            yc=get(ax,'ylim');
            %ax.XLabel.Position=[pos(1)+(xc(2))/2,pos(2)-yc(2)];
            ax.XLabel.ButtonDownFcn=@textHandler;
            set(ax.Title,'ButtonDownFcn',@textHandler);
            ax.ButtonDownFcn=@app.axClick;
            app.position{i}=ax.OuterPosition;
            hold (ax,'off');
            results=get(ax,'ylim')
        end
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            %app.GliomaIDHMutationDiagnosisToolUIFigure.WindowStyle = 'docked';
            %set(app.GliomaIDHMutationDiagnosisToolUIFigure,'Icon','anita.ico')
            models=txtmodelReader('open','modelsLog.txt');
            %app.HTML.HTMLSource=fullfile('C:/Users/trabz/Desktop/HTMLS/Mipsÿmzalar/signature.html')
            for i=models
                
                try
                    bufm=load ([i{1}]);
                    
                    ky=strsplit(i{1},{'/','\','.'});
                    ky=ky{end-1};
                    
                    app.models.(ky)=bufm.model;
                    disp([i{1} '.mat file is  founded in the directory and added to models'])
                catch
                    disp([i{1} '.mat file is NOT founded in the directory!' ])
                end
            end
            
            Defmodels=txtmodelReader('open','path','DefaultModelsLog.txt');
            
            for i=Defmodels
                
                try
                    Pre_CRC=i{1};
                    
                    
                    bufm=load ([i{1} '.mat']);
                    app.Defmodels.(Pre_CRC)=bufm.model;
                    disp([i{1} '.mat file is  founded in the directory and added to models'])
                catch
                    disp([i{1} '.mat file is NOT founded in the directory!' ])
                end
            end
            DefMassmodels=txtmodelReader('open','path','DefaultMassModels.txt');
            
            
            for i=DefMassmodels
                
                try
                    Pre_CRC=i{1};
                    
                    
                    bufm=load ([i{1} '.mat']);
                    app.DefMassmodels.(Pre_CRC)=bufm.model;
                    disp([i{1} '.mat file is  founded in the directory and added to models'])
                catch
                    disp([i{1} '.mat file is NOT founded in the directory!' ])
                end
            end
            
        end

        % Callback function
        function ShowButtPushed(app, event)
            app.indices;
            if app.UITable.Visible=="on";
                app.UITable.Visible=false;
                app.Button_5.Visible=true;
                app.ReportPanel.Visible="off";
            else
                app.UITable.Visible=true;
                app.Button_5.Visible=false;
                app.ReportPanel.Visible="off";
            end
            
        end

        % Callback function
        function LoadButtPushed2(app, event)
            [a,b]=uigetfile({'*.xlsx;*.xls;*.csv','Excel files (*.xlsx,*.csv)'});
            if a==0
                return  ;
            end
            removeStyle(app.UITable)
            a=readtable([b filesep   a],'ReadVariableNames',true);
            app.UITable.Data=a;
            set(app.UITable, 'ColumnName',a.Properties.VariableNames);
            app.indices;
            if app.UITable.Visible=="on"
                app.UITable.Visible=false;
                app.Button_5.Visible=true;
                app.ReportPanel.Visible="off";
            else
                app.UITable.Visible=true;
                app.Button_5.Visible=false;
                app.ReportPanel.Visible="off";
            end
            app.UITable.BackgroundColor = [1 1 .9; .9 .95 1];
            app.UITable.ColumnSortable = true;
            msgbox("Excel File Loaded",'Load Complete','none','replace');
        end

        % Callback function
        function UITableCellSelection(app, event)
            indices = event.Indices;
            indices
            app.indices=indices;
            
            
            
        end

        % Callback function
        function ClassifyButtButtonPushed(app, event)
            app.TERTIndices=0;
            app.IDHIndices=0;
            app.DoubleIndices=0;
            app.progressbar_3.Visible="on";
            app.ProcessingLabel_1.Visible="on";
            step=floor(700/size(app.indices,1));
            for i=1:size(app.indices,1)
                % yellow
                gCH=[ones(60,step*i) zeros(60,step*(size(app.indices,1)-i))];
                imshow(cat(3,zeros(size(gCH)),gCH,zeros(size(gCH))),'Parent',app.progressbar_3);
                drawnow();
                app.indices(i,1);
                table=app.UITable.Data;
                values=table(app.indices(i,1),:);
                values2=table2array(values);
                values1=(values2([1,2,3]));
                values3=values2([1,2,3]);
                values4=values2([1,2,3,4,8]);
                
                [tert tertP]=app.net.predictFcn(array2table(values1 ,'VariableNames',app.net.RequiredVariables))
                [double doubleP]=app.net3.predictFcn(array2table(values4,'VariableNames',app.net3.RequiredVariables))
                [idh idhP]=app.net2.predictFcn(array2table(values3,'VariableNames',app.net2.RequiredVariables))
                %                 app.TERT_OnlyLabel.Text=num2str(x)
                %                 app.IDH_OnlyLabel.Text=num2str(x2)
                %                 app.DoubleMutantLabel.Text=num2str(x1)
                
                if double==1
                    app.DoubleIndices=[app.DoubleIndices,app.indices(i,1)];
                    app.DoubleMutantLabel.Visible="on";
                    %app.IDH_OnlyLabel.Visible="off";
                    %app.TERT_OnlyLabel.Visible="off";
                    s = uistyle('BackgroundColor','green','FontColor','black','FontWeight','Bold');
                    addStyle(app.UITable,s,'row',app.indices(i,1));
                elseif idh==1
                    app.IDHIndices=[app.IDHIndices app.indices(i,1)];
                    %app.DoubleMutantLabel.Visible="off";
                    app.IDH_OnlyLabel.Visible="on";
                    %app.TERT_OnlyLabel.Visible="off";
                    s = uistyle('BackgroundColor','blue','FontColor','white','FontWeight','Bold');
                    addStyle(app.UITable,s,'row',app.indices(i,1));
                elseif tert==1
                    app.TERTIndices=[app.TERTIndices app.indices(i,1)];
                    %app.DoubleMutantLabel.Visible="off";
                    %app.IDH_OnlyLabel.Visible="off";
                    app.TERT_OnlyLabel.Visible="on";
                    s = uistyle('BackgroundColor','red');
                    addStyle(app.UITable,s,'row',app.indices(i,1));
                else
                    
                end
            end
            app.progressbar_3.Visible="off";
            app.ProcessingLabel_1.Visible="off";
        end

        % Callback function
        function ReportButtButtonPushed(app, event)
            app.TERTLabel_2.Visible="off";
            app.aLabel.Visible="off";
            app.DOUBLELabel.Visible="off";
            app.ReportPanel.Visible="on";
            app.UITable.Visible="off";
            app.Button_5.Visible="off";
            x=[length(app.IDHIndices)-1 length(app.TERTIndices)-1 length(app.DoubleIndices)-1];
            t=pie(app.pie,x,[1 1 1]);
            for i=1:length(find(x>0))
                t(i*2).BackgroundColor=[0.9 0.9 0.9];
                
            end
            app.TERT.BackgroundColor=[0.15 0.15 0.15];
            table=app.UITable.Data;
            p=table(app.IDHIndices(2:end),1:9);
            p1=table(app.TERTIndices(2:end),1:9);
            p2=table(app.DoubleIndices(2:end),1:9);
            mean(table2array(p,1));
            mean(table2array(p1,1));
            mean(table2array(p2,1));
            means=([mean(table2array(p),1) ; mean(table2array(p1),1); mean(table2array(p2),1)]);
            isnan(means);
            means(isnan(means))=-1;
            b=bar3(app.TERT, means);
            variables={"IDH Only","TERT Only","Double"};
            set(app.TERT,'yticklabel',variables);
            set(app.TERT,'xticklabel',p.Properties.VariableNames);
            app.TERT.Title.String="\color{magenta}Metabolite Mean Values";
            
            rotate3d (app.TERT,'on');
            b(1).XData;
            
            for i=1:length(b)
                b(i).ButtonDownFcn=@mouse_click;
            end
            function mouse_click(a,b)
                indX=mean(unique(a.XData(~isnan(a.XData))));
                
                indY=mean(unique(a.YData(~isnan(a.YData))));
                indZ=(unique(a.ZData(~isnan(a.ZData)),'stable'));
                indZ=nonzeros(indZ);
                app.TERTLabel_2.Text=[variables{2} " " int2str(indZ(2))];
                app.aLabel.Text=[variables{1} " " int2str(indZ(1))];
                app.DOUBLELabel.Text=[[variables{3} " " int2str(indZ(3))]];
                app.TERTLabel_2.Visible="on";
                app.aLabel.Visible="on";
                app.DOUBLELabel.Visible="on";
                app.ChooseabartoseeitsdetailsLabel.Text=[p(1,indX).Properties.VariableNames "Metabolite mean value for"  ];
            end
            
            
        end

        % Callback function
        function IDHONLYButtonPushed(app, event)
            selected_dir=uigetdir();
            table=app.UITable.Data;
            writetable(table(app.IDHIndices(2:end),:),[selected_dir   filesep 'IDH.xlsx']);
        end

        % Callback function
        function TERTONLYButtonPushed(app, event)
            selected_dir=uigetdir();
            table=app.UITable.Data;
            writetable(table(app.TERTIndices(2:end),:),[selected_dir   filesep  'TERT.xlsx']);
        end

        % Callback function
        function doubleMutButtonPushed(app, event)
            selected_dir=uigetdir();
            table=app.UITable.Data;
            writetable(table(app.DoubleIndices(2:end),:),[selected_dir   filesep  'DoubleMut.xlsx']);
        end

        % Value changed function: EditField
        function EditFieldValueChanged(app, event)
            value = app.EditField.Value;
            
            if ~isempty(value)
                if isempty(str2num(value))
                    msgbox("Please insert only numerical inputs", 'modal',"error");
                    app.EditField.Value="";
                end
            end
            
        end

        % Button pushed function: EnterButton
        function EnterButtonPushed(app, event)
            index=find(strcmp(app.MetaboliteMenuDropDown.Items,(app.MetaboliteMenuDropDown.Value)));
            cel2={app.MetaboliteMenuDropDown.Value  ' = ' app.EditField.Value};
            try
                app.MetaboliteMenuDropDown.Value=app.MetaboliteMenuDropDown.Items(index+1);
            catch
            end
            app.ListBox.Items{index}=[cel2{:}];
            app.ListBox.Value=app.ListBox.Items{index};
            app.manualControl(index)=1;
            app.manualValues(index)=str2num(app.EditField.Value);
            if isempty(find(app.manualControl==0));
                app.Classify.Enable="on";
            end
        end

        % Value changed function: ListBox
        function ListBoxValueChanged(app, event)
            value = app.ListBox.Value;
            
        end

        % Selection change function: MR_Spectroscopy
        function MR_SpectroscopySelectionChanged(app, event)
            selectedTab = app.MR_Spectroscopy.SelectedTab;
            startupFcn(app);
            switch selectedTab.Title
                case "Manual Entry"
                    f=fieldnames(app.models);
                    a=app.Tree3.Children;
                    a.delete;
                    for i=1:length(f)
                        
                        cat1=uitreenode(app.Tree3,'Text',f{i});
                        
                        
                    end
                case "Excel Entry"
                    f=fieldnames(app.models);
                    app.MODELSListBox.Items=f;
                    
                case "LC Model Raw"
                    f=fieldnames(app.models);
                    app.lcmodelraw.Items=f;
                    
            end
        end

        % Button pushed function: Classify
        function ClassifyButtonPushed(app, event)
            
            sec=app.Tree3.SelectedNodes.Text;
            app.NaNLabel.Text=num2str(100*app.Defmodels.(sec).plots.Accuracy);
            app.NaNLabel_2.Text=num2str(100*app.Defmodels.(sec).plots.specificity{2});
            app.NaNLabel_3.Text=num2str(100*app.Defmodels.(sec).plots.sensitivity{2});
            app.manualValues
            res=app.Defmodels.(sec).predictFcn(array2table(app.manualValues,'VariableNames'...
                ,app.Defmodels.(sec).Classification.PredictorNames));
            app.NaNLabel_4.Text=app.Defmodels.(sec).classes{res+1};
            app.ModelMetricsPanel.Visible="on";
            
            
        end

        % Callback function
        function Button_5ValueChanged(app, event)
            value = app.Button_5.Value;
            web('https://doi.org/10.1002/jmri.26964');
        end

        % Callback function
        function LCmodelLOADPushed(app, event)
            [app.tabledata,app.metabs,app.corrMatrix,app.sp,app.bg,app.fit,app.coord_filename]= load_lcmodel(app);
            test=sqrt(length(app.tabledata));
            app.lcmodelpanel.AutoResizeChildren="off";
            sub=ceil(test);
            col=round(test);
            app.coord_filename;
            linewidth=2;
            color=[1,1,1];
            objs=get(app.lcmodelpanel,'Children');
            
            delete(objs)
            
            for i=1:length(app.tabledata)
                
                if length(app.tabledata)>1
                    
                    app.ax{i}= subplot(sub,col,i,'Parent',app.lcmodelpanel);
                    app.lcmodelpanel.Visible="on";
                else
                    app.ax{i}=subplot(sub,col,i,'Parent',app.lcmodelpanel);
                    app.lcmodelpanel.Visible="on";
                end
                
                
                ppm=app.bg{i}.ppm;
                legendtext='';
                legendtext{1}=('\color{white}In vivo');
                legendtext{2}=('\color{white}Baseline');
                legendtext{3}=('\color{white}Fit');
                
                app.GliomaIDHMutationDiagnosisToolUIFigure.AutoResizeChildren='off';
                pt_axis=0;
                
                b(i,1)=plot(app.ax{i},ppm, fliplr(app.sp{i}.specs'),'LineWidth',linewidth,'Color',color);
                
                text(app.ax{i},ppm(1)+ppm(1)*0.01,app.sp{i}.specs(end), legendtext{1},"Color",color);
                pt_axis=pt_axis-max(app.bg{i}.specs')*1.10+mean(app.bg{i}.specs);
                
                hold (app.ax{i},'on')
                b(i,2)=plot(app.ax{i},ppm,fliplr(app.bg{i}.specs')+pt_axis,'LineWidth',linewidth,'Color',color); %!!!!
                text(app.ax{i},ppm(1)+ppm(1)*0.01,app.bg{i}.specs(end)+pt_axis, legendtext{2},"Color",color);
                pt_axis=pt_axis-max(app.fit{i}.specs')*1.10+mean(app.fit{i}.specs);
                
                
                b(i,3)=plot(app.ax{i},[ppm], fliplr(app.fit{i}.specs')+pt_axis,'LineWidth',linewidth,'Color',color);
                text(app.ax{i},ppm(1)+ppm(1)*0.01,app.fit{i}.specs(end)+pt_axis, legendtext{3},"Color",color);
                
                
                hold (app.ax{i},'off');
                app.LCMODELRAWLIST.Items={'In vivo','Baseline','Fit',app.tabledata{i}.name{:}};
                app.LCMODELRAWLIST.ItemsData=cellstr(string([1:length(app.tabledata{i}.name)+3]));
                app.LCMODELVALUES.Items=cellstr(string([0,0,0,app.tabledata{i}.concentration]));
                app.LCMODELVALUES.ItemsData=cellstr(string([1:length(app.tabledata{i}.concentration)+3]));
                set(app.ax{i},'Color',app.ReportPanel.BackgroundColor);
                finalt=strsplit(string(app.coord_filename{i}),filesep  );
                title(app.ax{i},['\color{white}' finalt{end}]);
                set(app.ax{i},'ytick',[]);
                set(app.ax{i},'yticklabel',[ppm(end):ppm(1)]);
                set(app.ax{i},'xtick',[ppm(end):0.5:ppm(1)]);
                
                set(app.ax{i},'xticklabel',[ppm(end):0.5:ppm(1)]);
                
                xlim(app.ax{i},[ppm(end),ppm(1)+ppm(1)*0.2]);
                ylim(app.ax{i},[pt_axis*1.50,max(b(i,1).YData)*1.15]);
                app.ax{i}.ButtonDownFcn=@app.axClick;
                app.position{i}=app.ax{i}.OuterPosition;
                hold (app.ax{i},'off');
                
            end
            
            
        end

        % Selection changed function: Tree
        function TreeSelectionChanged(app, event)
            selectedNodes = app.Tree.SelectedNodes;
            
            try
                app.MR_Diffusion.Visible="off";
                app.MR_Spectroscopy.Visible="OFF";
                app.AdvancedUser.Visible="OFF";
                app.About.Visible="off";
                app.MassSpectroscopy.Visible="off";
                app.Tree.SelectedNodes.NodeData
                app.(app.Tree.SelectedNodes.NodeData).Visible='on';
                
            catch
                
            end
            
        end

        % Callback function
        function Button_8Pushed(app, event)
            
        end

        % Selection change function: MR_Diffusion
        function MR_DiffusionSelectionChanged(app, event)
            selectedTab = app.MR_Diffusion.SelectedTab;
            
        end

        % Callback function
        function LCDRAWPushed2(app, event)
            %legendtext{1}=('\color{white} In vivo');
            %legendtext{2}=('\color{white} Baseline');
            %legendtext{3}=('\color{white} Fit');
            app.Panel.Visible="off";
            linewidth=2;
            test=sqrt(length(app.tabledata));
            app.lcmodelpanel.AutoResizeChildren="off";
            sub=ceil(test);
            col=round(test);
            app.coord_filename;
            linewidth=1;
            linecolor=[1,1,1];
            FontSize=4;
            wait=waitbar(0.1,"Plotting Spectra");
            for i=1:length(app.tabledata)
                %cla(app.ax{i},'reset');
                
                app.ax{i}= subplot(sub,col,i,'Parent',app.lcmodelpanel,'Color',app.ReportPanel.BackgroundColor);
                
                app.lcmodelpanel.Visible="on";
                
                
                ppm=app.bg{1}.ppm;
                values=app.LCMODELRAWLIST.Value;
                modplot=str2double(values);
                waitbar((i)/length(app.tabledata),wait,"Plotting Spectra(s)")
                app.plotSpectra(modplot,i,ppm,linewidth,app.ax{i},linecolor,FontSize);
                
                
                
            end
            close(wait);
            ax.AutoResizeChildren="on";
            
        end

        % Callback function
        function LCMODELRAWLISTValueChanged(app, event)
            value = app.LCMODELRAWLIST.Value;
            app.LCMODELVALUES.Value=value;
        end

        % Callback function
        function LClassifyButtonPushed(app, event)
            values=app.LCMODELVALUES.Items
            metabs2=app.LCMODELRAWLIST.Items
            
            tert=app.net;
            idh=app.net2;
            doble=app.net3;
            for i=1:length(app.tabledata)
                if (app.Panel.Visible=="off")
                    [tert2,idh2,double2]=scripttester(app,app.tabledata{i},app.metabs{i},tert,idh,doble);
                    res{i}=[tert2,idh2,double2];
                else
                    msgbox('alekta')
                end
                
                
            end
            app.panel2.AutoResizeChildren="off";
            ax=subplot(1,1,1,'Parent',app.panel2);
            modelResPlot(ax,res,{'TERT','IDH','Double'})
            
            
            return;
            
            
            valNum=str2double(values);
            values1=(valNum([9,12,13]));
            values3=(valNum([9,12,13]));
            VAL=app.VAL;
            values4=(valNum(VAL));
            
            SD=app.tabledata.SDpct(VAL);
            VAL2=VAL(find(SD>=30));
            sdLarger={''};
            for i=1:length(VAL2)
                sdLarger{i}=['Metab=' metabs2{VAL2(i)}  ' Value=' values{VAL2(i)} ' SD=' num2str(app.tabledata.SDpct(VAL2(i)))];
                
            end
            
            app.SDLARGER.Items=sdLarger;
            app.LCMODELRAWLIST.Value={'9','12','13','14','23'};
            app.LCMODELVALUES.Value={'9','12','13','14','23'};
            
            
            
            cond=1;
            if ~isempty(VAL2)
                h=questdlg('There are SD threshold violances','something','YES','NO','NO');
                switch h
                    case 'YES'
                        %'OK' code here
                    case 'NO'
                        cond=0;%abort code
                    otherwise
                        cond=0;
                end
            end
            if cond==1
                
                x=app.net.predictFcn(array2table(values1 ,'VariableNames',app.net.RequiredVariables));
                x1=app.net3.predictFcn(array2table(values4,'VariableNames',app.net3.RequiredVariables));
                x2=app.net2.predictFcn(array2table(values3,'VariableNames',app.net2.RequiredVariables));
                %                 app.TERT_OnlyLabel.Text=num2str(x)
                %                 app.IDH_OnlyLaapp.VALbel.Text=num2str(x2)
                %                 app.DoubleMutantLabel.Text=num2str(x1)
                
                if x1==1
                    msgbox('DOUBLE');
                    
                elseif x2==1
                    msgbox('IDH');
                elseif x==1
                    msgbox('tert');
                else
                    
                end
                
                
            end
        end

        % Callback function
        function TrainerLoadButtonPushed(app, event)
            if app.UITable2.Visible=="on" & app.TrainingPanel.Visible=="off"
                
                [a,b]=uigetfile({'*.xlsx;*.xls;*.csv','Excel files (*.xlsx,*.csv)'});
                if a==0
                    return  ;
                end
                removeStyle(app.UITable2)
                
                a=readtable([b filesep   a],'ReadVariableNames',true);
                app.UITable2.Data=a;
                set(app.UITable2, 'ColumnName',a.Properties.VariableNames);
                
                
                app.Variable1DropDown.Items=app.UITable2.Data.Properties.VariableNames;
                app.Variable2DropDown.Items=app.UITable2.Data.Properties.VariableNames;
            else
                app.UITable2.Visible="on";
                app.PREDICTORSListBox.Visible="on";
                app.RESPONSEListBox.Visible="on";
                app.trainertab.Visible="off";
                app.advancedList.Visible="off";
                app.advancedPanel.Visible="off";
                app.TrainingPanel.Visible="off";
                
            end
            
            app.UITable2.BackgroundColor = [1 1 .9; .9 .95 1];
            app.UITable2.ColumnSortable = true;
            app.PREDICTORSListBox.Items=app.UITable2.Data.Properties.VariableNames
            
        end

        % Callback function
        function LCDRAWVSButtonPushed(app, event)
            %legendtext{1}=('\color{white} In vivo');
            %legendtext{2}=('\color{white} Baseline');
            %legendtext{3}=('\color{white} Fit');
            
            
        end

        % Callback function
        function GLIOMA_GENETIC_DIAGNOSISButton_2ValueChanged(app, event)
            value = app.GLIOMA_GENETIC_DIAGNOSISButton_2.Value;
            if app.Panel.Visible=="on"
                app.Panel.Visible="off";
            else
                app.Panel.Visible="on";
            end
            
        end

        % Button pushed function: plots_2
        function plotsButtonPushed(app, event)
            
            answer=get(app.PLOTSButtonGroup,'SelectedObject')
            app.trainerpanel.AutoResizeChildren="off";
            app.trainerpanel.Visible="on";
            ax1= subplot(1,1,1,'Parent',app.trainerpanel,'Color',app.trainerpanel.BackgroundColor);
            
            
            classes=unique(table2array(app.UITable2.Data(:,app.trainerResp(1,2))));
            
            try
                classes=classes(~(isnan(classes)));
            catch
                classes=string(classes(~(classes=="")));
            end
            rsVar=app.UITable2.Data.Properties.VariableNames{app.trainerResp(1,2)};
            switch answer.Text
                case 'Variable Plot'
                    delete(get(app.trainerpanel,'Children'));
                    ax1= subplot(1,1,1,'Parent',app.trainerpanel,'Color',app.trainerpanel.BackgroundColor);
                    
                    for i=classes'
                        
                        
                        values=(app.UITable2.Data(app.UITable2.Data.(rsVar)==i,:))
                        
                        
                        scatter(ax1,values.(app.Variable1DropDown.Value),...
                            values.(app.Variable2DropDown.Value),'Filled','LineWidth',3)
                        hold (ax1,'on')
                        ax1.Title.String=[' Variable Distribution Plot of ' rsVar];
                        ax1.Title.Color=[0,0,0];
                    end
                    hold(ax1,"off")
                    legend(ax1,string(num2cell((classes'))),'Color',...
                        app.trainerpanel.BackgroundColor,'TextColor',[0 0 0]);
                    ax1.ButtonDownFcn=@app.axClick;
                    
                    ax1.XLabel.String=app.Variable1DropDown.Value
                    ax1.XLabel.ButtonDownFcn=@textHandler;
                    ax1.YLabel.String=app.Variable2DropDown.Value
                    ax1.YLabel.ButtonDownFcn=@textHandler;
                    
                case 'Spider Plot'
                    ii=1
                    size1=length(classes);
                    size1=sqrt(size1);
                    maxx=0;
                    obj=get(app.trainerpanel,'Children');
                    delete(obj);
                    for i=classes'
                        if app.MergeCheckBox.Value
                            
                            
                            ax1=subplot(1,1,1,'Parent',app.trainerpanel,'Color',app.trainerpanel.BackgroundColor);
                            ax1.Title.String=['All Groups'];
                            
                        else
                            
                            app.ax{ii}= subplot(round(size1),(ceil(size1)),ii,'Parent',app.trainerpanel,'Color',app.trainerpanel.BackgroundColor);
                            ax1=app.ax{ii};
                            ax1.Title.String=[rsVar '=' num2str(i)];
                            
                        end
                        values=(app.UITable2.Data(app.UITable2.Data.(rsVar)==i,:));
                        app.position{ii}=ax1.Position;
                        
                        color=rand(1,3);
                        values2=table2array(values(:,app.trainerPredictors));
                        maxx=radarplotOUT(ax1,{mean((values2),1)},...
                            {values.Properties.VariableNames{app.trainerPredictors}},'WebColor',[0,0,0],'LineColor',color,...
                            'FillColor',color,'isFirst',(app.MergeCheckBox.Value-(ii==length(classes)))==1,'max',maxx);
                        ax1.ButtonDownFcn=@app.axClick;
                        
                        
                        
                        set(ax1,'XColor',[1,1,1]);
                        set(ax1,'XColorMode','manual');
                        set(ax1,'YColor',[1,1,1]);
                        set(ax1,'Color',app.trainerpanel.BackgroundColor);
                        ii=ii+1;
                        hold (ax1,'on');
                        set(ax1,'xcolor',app.trainerpanel.BackgroundColor);
                        set(ax1,'ycolor',app.trainerpanel.BackgroundColor);
                        xlim(ax1,[-1.2*maxx,1.2*maxx]);
                        ylim(ax1,[-1.2*maxx,1.2*maxx]);
                    end
                    delete(findobj(ax1,'type','legend'));
                    
                case 'Box Plot'
                    yl=0;
                    xl=0;
                    ii=1
                    size1=length(classes);
                    size1=sqrt(size1);
                    for i=classes'
                        app.ax{ii}= subplot(round(size1),(ceil(size1)),ii,'Parent',app.trainerpanel,'Color',app.trainerpanel.BackgroundColor);
                        ax1=app.ax{ii};
                        values=(app.UITable2.Data(app.UITable2.Data.(rsVar)==i,:));
                        app.CompactCheckBox_3
                        if app.CompactCheckBox_3.Value
                            try
                                boxplot(ax1,(values(:,app.trainerPredictors)),'PlotStyle','compact','Notch',...
                                    'on','Labels',{values.Properties.VariableNames{app.trainerPredictors}},'Colors',[1,1,1]);
                            catch
                                boxplot(ax1,([table2array(values(:,app.trainerPredictors)) ;table2array(values(:,app.trainerPredictors)) ]),'PlotStyle','compact','Notch',...
                                    'on','Labels',{values.Properties.VariableNames{app.trainerPredictors}},'Colors',[1,1,1]);
                            end
                            
                        else
                            values=(app.UITable2.Data(app.UITable2.Data.(rsVar)==i,:));
                            
                            try
                                boxplot(ax1,table2array(values(:,app.trainerPredictors)),'Labels',...
                                    {values.Properties.VariableNames{app.trainerPredictors}}) ;
                            catch
                                boxplot(ax1,[table2array(values(:,app.trainerPredictors)) ;table2array(values(:,app.trainerPredictors)) ],'Labels',...
                                    {values.Properties.VariableNames{app.trainerPredictors}})
                            end
                            set(ax1,'XTickLabelRotation',90);
                            lines=findobj(ax1, 'type', 'line','Tag','Upper Whisker')
                            set(lines,'Color',[0,0,0]);
                            lines=findobj(ax1, 'type', 'line','Tag','Lower Whisker')
                            set(lines,'Color',[0,0,0]);
                            
                            lines=findobj(ax1, 'type', 'line','Tag','Upper Adjacent Value')
                            set(lines,'Color',[0,0,0]);
                            
                            lines=findobj(ax1, 'type', 'line','Tag','Lower Adjacent Value')
                            set(lines,'Color',[0,0,0]);
                            set(lines,'Color',[0,0,0]);
                            
                            ax1.ButtonDownFcn=@app.axClick;
                            title(ax1,['\color{white}' 'Group ' num2str(i)]);
                        end
                        set(ax1,'XColor',[0,0,0])
                        set(ax1,'XColorMode','manual')
                        set(ax1,'YColor',[0,0,0])
                        set(ax1,'Color',app.trainerpanel.BackgroundColor);
                        mxlim=get(ax1,'xlim');
                        mylim=get(ax1,'ylim');
                        if mxlim>xl
                            xl=mxlim;
                        end
                        if mylim>yl;
                            yl=mylim;
                        end
                        ii=ii+1;
                    end
                    try
                        axs=get(app.trainerpanel,'Children');
                        for ia=axs
                            axs.xlim=   xl;
                            axs.ylim=yl;
                            
                        end
                    catch
                    end
                case 'Line Plot'
                    delete(get(app.trainerpanel,'Children'));
                    ax1= subplot(1,1,1,'Parent',app.trainerpanel,'Color',app.trainerpanel.BackgroundColor);
                    data=app.UITable2.Data(:,[app.trainerPredictors app.trainerResp(1,2)]);
                    
                    variablePlot(ax1,data,size(data,2),app.ScatterCheck.Value,app.Variable1DropDown.Value,...
                        app.CheckBox.Value,app.CISpinner.Value);
                    ax1.ButtonDownFcn=@app.axClick;
                    if ~app.ScatterCheck.Value
                        ax1.Title.String='Line Plot of Means of Features';
                    else
                        
                        ax1.Title.String=app.Variable1DropDown.Value
                    end
                    ax1.YLabel.String='Value';
                    ax1.XLabel.String='Features';
                case 'Bar Plot'
                    delete(get(app.trainerpanel,'Children'));
                    app.ax{1}= subplot(1,1,1,'Parent',app.trainerpanel,'Color',...
                        app.trainerpanel.BackgroundColor);
                    data=app.UITable2.Data(:,[app.trainerPredictors app.trainerResp(1,2)]);
                    app.ax{1}.ButtonDownFcn=@app.axClick;
                    barplotM(app.ax{1},data,size(data,2));
                    app.ax{1}.Title.String='Bar Plot of Metabolites" Means';
                    app.ax{1}.YLabel.String='Groups';
                    app.ax{1}.XLabel.String='Metabolites';
                case 'PCA Plot'
                    delete(get(app.trainerpanel,'Children'));
                    app.ax{1}= subplot(1,2,1,'Parent',app.trainerpanel,'Color'...
                        ,app.trainerpanel.BackgroundColor);
                    data=app.UITable2.Data(:,[app.trainerPredictors app.trainerResp(1,2)])
                    app.ax{1}.ButtonDownFcn=@app.axClick;
                    pcaPlot(app.ax{1},data,size(data,2),app.DimensionSpinner.Value,0);
                    
                    app.ax{1}.Title.String='PCA Plot With Feature Vectors';
                    
                    
                    app.ax{2}= subplot(1,2,2,'Parent',app.trainerpanel,'Color',...
                        app.trainerpanel.BackgroundColor);
                    pcaPlot(app.ax{2},data,size(data,2),app.DimensionSpinner.Value,1);
                    app.ax{2}.ButtonDownFcn=@app.axClick;
                    app.ax{2}.Title.String='PCA Plot of Features';
                    
            end
        end

        % Cell selection callback: UITable2
        function UITable2CellSelection(app, event)
            app.subindices = event.Indices
            return;
            
            if ~isempty(app.trainerResp)
                app.UITable2.StyleConfigurations.TargetIndex
                app.trainerResp(1,2)
                try
                    x=find(cell2mat(app.UITable2.StyleConfigurations.TargetIndex)==app.trainerResp(1,2))
                    removeStyle(app.UITable2,x);
                catch
                    try
                        removeStyle(app.UITable2,2);
                    catch
                    end
                    
                end
            end
            app.trainerResp=indices;
            %removeStyle(app.UITable2)
            
            s = uistyle("BackgroundColor",'blue',"FontColor",'white');
            addStyle(app.UITable2,s,'column',indices(1,2));
            app.RESPONSEListBox.Items=app.UITable2.Data.Properties.VariableNames((indices(1,2)))
            
            
        end

        % Value changed function: Variable1DropDown
        function Variable1DropDownValueChanged(app, event)
            value = app.Variable1DropDown.Value;
            app.Variable2DropDown.Value
            app.Variable1DropDown.Value
            
        end

        % Image clicked function: Image5
        function Image5Clicked(app, event)
            try
                [ans2,f]=trainer(app,'WeightedKNNS','WeightedKNNLabel',app.trainerResp(1,2),app.trainerPredictors)
                if isempty(ans2)
                    return
                end
                if app.auto==1
                    app.automodels.(ans2{1})=f
                elseif app.auto==0
                    app.models.(ans2{1})=f;
                end
                app.currentModel='WeightedKNN';
            catch
                
                app.currentModel='WeightedKNNS';
                a='WeightedKNNLabel';
                b='Weighted KNN';
                app.(a).BackgroundColor='red';
                app.(a).FontColor="white";
                app.(a).FontWeight="Bold";
                app.(a).Text=[b ' Failed'];
                
            end
        end

        % Button pushed function: trainer32
        function trainer32ButtonPushed(app, event)
            
            if isempty(app.trainerPredictors) | isempty(app.trainerResp)
                
                msgbox("Please Select Predictors and Response","ERROR","non-modal");
                
                
            else
                app.TrainingPanel.Visible="on";
                app.AdvancedMenuPanel.Visible="off";
                app.advancedList.Visible="off";
            end
        end

        % Callback function
        function predictorButtonPushed(app, event)
            
            
            
            removeStyle(app.UITable2);
            app.trainerPredictors=find(ismember(app.PREDICTORSListBox.Items, app.PREDICTORSListBox.Value)==1)
            s = uistyle("BackgroundColor",'green',"FontColor",'red');
            
            addStyle(app.UITable2,s,'column',app.trainerPredictors);
            
            return;
            
            if ismember(app.trainerPredictors,app.trainerResp(1,2))
                
                'predde'
                removeStyle(app.UITable2,'column',app.trainerResp(1,2));
                index = find(strncmpi(app.UITable2.Data.Properties.VariableNames,string(app.UITable2.Data.Properties.VariableNames...
                    (app.trainerResp(1,2)))))
            else
                app.predictor.Text="Select Predictor";
                [app.PREDICTORSListBox.Items string(app.UITable2.Data.Properties.VariableNames...
                    (app.trainerResp(1,2)))]
                app.PREDICTORSListBox.Items=[app.PREDICTORSListBox.Items string(app.UITable2.Data.Properties.VariableNames...
                    (app.trainerResp(1,2)))];
                app.trainerPredictors(end+1)=app.trainerResp(1,2)
                removeStyle(app.UITable2)
                s = uistyle("BackgroundColor",'green',"FontColor",'white');
                
                addStyle(app.UITable2,s,'column',app.trainerPredictors);
            end
            app.trainerResp=[];
            
        end

        % Node expanded function: Tree2
        function Tree2NodeExpanded(app, event)
            
            
            app.advancedList.Visible="on";
            app.advancedPanel.Visible="on";
            txt='';
            node=event.Node;
            strct=app.models;
            try
                structDisp(app,strct,node,"advancedList");
            catch
                uiconfirm(app.GliomaIDHMutationDiagnosisToolUIFigure,'Not Supported','Error')
            end
            %{
            node = event.Node;
            x.Text="aa";
            try
                x=(node.Parent);
                
                x.Text
                isstring(x.Text)
                while isstring(string(x.Text))
                    
                    
                    txt=insertBefore([txt],1,[x.Text '.'])
                    x=(x.Parent)
                    
                end
                
                
            catch
                disp("catch")
                
            end
            
            
            if isempty(txt)
                f=fieldnames(app.models);
            else
                
                try
                    ['app.' txt node.Text]
                    
                    f=fieldnames((eval(['app.' txt node.Text])))
                catch
                    msgbox("Not a struct please use plot or show to see data")
                    eval(['app.' txt node.Text])
                    
                    app.advancedList.Items=string(num2cell((eval(['app.' txt node.Text]))'))
                    
                    return;
                end
            end
            a=node.Children;
            a.delete;
            for i=1:length(f)
                
                cat1=uitreenode(node,'Text',f{i},'NodeData',[]);
                uitreenode(cat1,'Text',f{i},'NodeData',[]);
                
            end
            %}
        end

        % Button pushed function: advancedPlot
        function advancedPlotButtonPushed(app, event)
            app.advancedPanel.AutoResizeChildren="off";
            ax=app.advancedPanel;
            app.advancedPanel
            close all
            if app.SubplotCheckBox.Value
                ax=subplot(1,1,1,'Parent',app.advancedPanel,'Color',app.advancedPanel.BackgroundColor);
                S = sprintf('%s ', app.advancedList.Items{:});
                D = sscanf(S, '%f');
                plot(ax,D);
                set(ax,'Color',app.advancedPanel.BackgroundColor);
            else
                
            end
            
            
            
        end

        % Image clicked function: linearsvm
        function linearsvmClicked(app, event)
            try
                
                [ans2,f]=trainer(app,'LinearSVM2','LinearSVMLabel',app.trainerResp(1,2),app.trainerPredictors)
                if isempty(ans2)
                    return
                end
                if app.auto==1
                    app.automodels.(ans2{1})=f
                else
                    app.models.(ans2{1})=f;
                end
                app.currentModel='LinearSVM';
            catch
                
                app.currentModel='LinearSVM';
                a='LinearSVMLabel';
                b='Linear SVM';
                app.(a).BackgroundColor='red';
                app.(a).FontColor="white";
                app.(a).FontWeight="Bold";
                app.(a).Text=[b ' Failed'];
            end
        end

        % Size changed function: ManualEntryTab
        function ManualEntryTabSizeChanged(app, event)
            position = app.ManualEntryTab.Position;
            
        end

        % Selection changed function: Tree3
        function Tree3SelectionChanged(app, event)
            selectedNodes = app.Tree3.SelectedNodes;
            
            app.ModelMetricsPanel.Visible='off';
            the=app.Defmodels.(selectedNodes.Text).CRLB;
            if app.Defmodels.(selectedNodes.Text).CRLB~=-1
                
                fig = app.GliomaIDHMutationDiagnosisToolUIFigure;
                selection = uiconfirm(fig,['Selected model has CRLB threshold which is ' num2str(the) '. Please enter 0 to the values which are above.'],'Confirm Close',...
                    'Icon','warning');
                
                
            end
            
            
            reqAdder(app,app.Defmodels,{"MetaboliteMenuDropDown","ListBox"},selectedNodes.Text)
            app.manualControl=zeros(1,size(app.ListBox.Items,2));
            app.manualValues=zeros(1,size(app.ListBox.Items,2));
            
        end

        % Callback function
        function MODELSListBoxValueChanged(app, event)
            value = app.MODELSListBox.Value;
            reqAdder(app,app.models,{"MODELSListBox_2","MODELSListBox_2"},value)
        end

        % Callback function
        function ModelPlotButtonPushed(app, event)
            modelx=(app.lcmodelraw.Value)
            app.lcmodelpanel.Visible=true;
            model=app.models.(modelx);
            app.lcmodelpanel.AutoResizeChildren="off";
            
            ax=subplot(2,2,1,'Parent',app.lcmodelpanel);
            confusionMatPlot(ax,model.plots.Ygt,model.plots.Ypr);
            ax.ButtonDownFcn=@axClick
            
            ax=subplot(2,2,3,'Parent',app.lcmodelpanel);
            confusionMatPlotSideVal1(ax,model.plots.Ygt,model.plots.Ypr);
            ax.ButtonDownFcn=@axClick
            
            
            ax=subplot(2,2,4,'Parent',app.lcmodelpanel);
            confusionMatPlotSideVal2(ax,model.plots.Ygt,model.plots.Ypr);
            ax.ButtonDownFcn=@axClick
            
            
            
            modelPlotter(app,model,app.lcmodelpanel,'all','white');
            
            
            
            
            
        end

        % Image clicked function: quadraticsvm
        function quadraticsvmImageClicked(app, event)
            try
                [ans2,f]=trainer(app,'QuadraticSVM','QuadraticSVMLabel',app.trainerResp(1,2),app.trainerPredictors)
                if isempty(ans2)
                    return
                end
                if app.auto==1
                    app.automodels.(ans2{1})=f
                else
                    app.models.(ans2{1})=f;
                end
                app.currentModel='QuadraticSVM';
            catch
                app.currentModel='QuadraticSVM';
                a='QuadraticSVMLabel';
                b='Quadratic SVM';
                app.(a).BackgroundColor='red';
                app.(a).FontColor="white";
                app.(a).FontWeight="Bold";
                app.(a).Text=[b ' Failed'];
            end
        end

        % Image clicked function: Image5_5
        function Image5_5Clicked(app, event)
            try
                [ans2,f]= trainer(app,'CoarseKNNS','CoarseKNNLabel',app.trainerResp(1,2),app.trainerPredictors)
                if isempty(ans2)
                    return
                end
                if app.auto==1
                    app.automodels.(ans2{1})=f
                else
                    app.models.(ans2{1})=f;
                end
                app.currentModel='CoarseKNN';
            catch
                
                app.currentModel='CoarseKNN';
                a='CoarseKNNLabel';
                b='Coarse KNN';
                app.(a).BackgroundColor='red';
                app.(a).FontColor="white";
                app.(a).FontWeight="Bold";
                app.(a).Text=[b ' Failed'];
            end
        end

        % Image clicked function: fineknn
        function fineknnImageClicked(app, event)
            try
                [ans2,f]=trainer(app,'FineKNNS','FineKNNLabel',app.trainerResp(1,2),app.trainerPredictors)
                if isempty(ans2)
                    return
                end
                if app.auto==1
                    app.automodels.(ans2{1})=f
                else
                    app.models.(ans2{1})=f;
                end
                app.currentModel='FineKNN';
            catch
                
                app.currentModel='FineKNN';
                
                a='FineKNNLabel';
                b='Fine KNN';
                app.(a).BackgroundColor='red';
                app.(a).FontColor="white";
                app.(a).FontWeight="Bold";
                app.(a).Text=[b ' Failed'];
            end
        end

        % Image clicked function: MediumTree
        function MediumTreeClicked(app, event)
            try
                [ans2,f]=trainer(app,'MediumTree','MediumTreeLabel',app.trainerResp(1,2),app.trainerPredictors)
                if isempty(ans2)
                    return
                end
                if app.auto==1
                    app.automodels.(ans2{1})=f
                else
                    app.models.(ans2{1})=f;
                end
                app.currentModel='MediumTree';
            catch
                
                app.currentModel='MediumTree';
                a='MediumTreeLabel';
                b='Medium Tree';
                app.(a).BackgroundColor='red';
                app.(a).FontColor="white";
                app.(a).FontWeight="Bold";
                app.(a).Text=[b ' Failed'];
            end
        end

        % Image clicked function: CoarseTree
        function CoarseTreeImageClicked(app, event)
            try
                [ans2,f]=trainer(app,'CoarseTreee','CoarseTreeLabel',app.trainerResp(1,2),app.trainerPredictors)
                if isempty(ans2)
                    return
                end
                if app.auto==1
                    app.automodels.(ans2{1})=f
                else
                    app.models.(ans2{1})=f;
                end
                app.currentModel='CoarseTree';
            catch
                
                app.currentModel='CoarseTree';
                a='CoarseTreeLabel';
                b='Coarse Tree';
                app.(a).BackgroundColor='red';
                app.(a).FontColor="white";
                app.(a).FontWeight="Bold";
                app.(a).Text=[b ' Failed'];
            end
        end

        % Callback function
        function GLIOMA_GENETIC_DIAGNOSISButton_3ValueChanged(app, event)
            value = app.GLIOMA_GENETIC_DIAGNOSISButton_3.Value;
            
            if app.MODELSListBox.Visible=='on';
                app.MODELSListBoxLabel.Visible="off";
                app.MODELSListBox.Visible="off";
                app.MODELSListBox_2.Visible="off";
            else
                app.MODELSListBoxLabel.Visible="on";
                app.MODELSListBox.Visible="on";
                app.MODELSListBox_2.Visible="on";
            end
            
            
        end

        % Image clicked function: fineknn_2
        function fineknn_2ImageClicked(app, event)
            try
                [ans2,f]=trainer(app,'CubicKNNS','CubicKNNLabel',app.trainerResp(1,2),app.trainerPredictors)
                if isempty(ans2)
                    return
                end
                if app.auto==1
                    app.automodels.(ans2{1})=f
                else
                    app.models.(ans2{1})=f;
                end
                app.currentModel='CubicKNN';
            catch
                
                app.currentModel='CubicKNN';
                a='CubicKNNLabel';
                b='Cubic KNN';
                app.(a).BackgroundColor='red';
                app.(a).FontColor="white";
                app.(a).FontWeight="Bold";
                app.(a).Text=[b ' Failed'];
            end
        end

        % Image clicked function: fineknn_3
        function fineknn_3ImageClicked(app, event)
            try
                [ans2,f]=trainer(app,'CosineKNNS','CosineKNNLabel',app.trainerResp(1,2),app.trainerPredictors)
                if isempty(ans2)
                    return
                end
                if app.auto==1
                    app.automodels.(ans2{1})=f
                else
                    app.models.(ans2{1})=f;
                end
                app.currentModel='CosineKNN';
            catch
                
                app.currentModel='CosineKNN';
                a='CosineKNNLabel';
                b='Cosine KNN';
                app.(a).BackgroundColor='red';
                app.(a).FontColor="white";
                app.(a).FontWeight="Bold";
                app.(a).Text=[b ' Failed'];
            end
        end

        % Image clicked function: Image5_4
        function Image5_4Clicked(app, event)
            try
                [ans2,f]=trainer(app,'CubicSVM','CubicSVMLabel',app.trainerResp(1,2),app.trainerPredictors)
                if isempty(ans2)
                    return
                end
                if app.auto==1
                    app.automodels.(ans2{1})=f
                else
                    app.models.(ans2{1})=f;
                end
                app.currentModel='CubicSVM';
            catch
                
                app.currentModel='CubicSVM';
                a='CubicSVMLabel';
                b='Cubic SVM';
                app.(a).BackgroundColor='red';
                app.(a).FontColor="white";
                app.(a).FontWeight="Bold";
                app.(a).Text=[b ' Failed'];
            end
        end

        % Image clicked function: Image5_6
        function Image5_6Clicked(app, event)
            try
                [ans2,f]=trainer(app,'FGSVM','FineGaussianSVMLabel',app.trainerResp(1,2),app.trainerPredictors)
                if isempty(ans2)
                    return
                end
                if app.auto==1
                    app.automodels.(ans2{1})=f
                else
                    app.models.(ans2{1})=f;
                end
                app.currentModel='FineGaussianSVM';
            catch
                
                app.currentModel='FineGaussianSVM';
                a='FineGaussianSVMLabel';
                b='Fine Gaussian SVM';
                app.(a).BackgroundColor='red';
                app.(a).FontColor="white";
                app.(a).FontWeight="Bold";
                app.(a).Text=[b ' Failed'];
            end
        end

        % Image clicked function: Image5_7
        function Image5_7Clicked(app, event)
            try
                [ans2,f]=trainer(app,'MediumGaussianSVM','MediumGaussianSVMLabel',app.trainerResp(1,2),app.trainerPredictors)
                if isempty(ans2)
                    return
                end
                if app.auto==1
                    app.automodels.(ans2{1})=f
                else
                    app.models.(ans2{1})=f;
                end
                app.currentModel='MediumGaussianSVM';
                
            catch
                
                app.currentModel='MediumGaussianSVM';
                a='MediumGaussianSVMLabel';
                b='Medium Gaussian SVM';
                app.(a).BackgroundColor='red';
                app.(a).FontColor="white";
                app.(a).FontWeight="Bold";
                app.(a).Text=[b ' Failed'];
            end
        end

        % Image clicked function: CoarseTree_2
        function CoarseTree_2ImageClicked(app, event)
            try
                [ans2,f]=trainer(app,'FineTree','FineTreeLabel',app.trainerResp(1,2),app.trainerPredictors)
                if isempty(ans2)
                    return
                end
                if app.auto==1
                    app.automodels.(ans2{1})=f
                else
                    app.models.(ans2{1})=f;
                end
                app.currentModel='FineTree';
            catch
                
                app.currentModel='FineTree';
                a='FineTreeLabel';
                b='Fine Tree';
                app.(a).BackgroundColor='red';
                app.(a).FontColor="white";
                app.(a).FontWeight="Bold";
                app.(a).Text=[b ' Failed'];
            end
        end

        % Image clicked function: BoostedTrees
        function BoostedTreesImageClicked(app, event)
            try
                [ans2,f]=trainer(app,'BoostedTrees','BoostedTreesLabel',app.trainerResp(1,2),app.trainerPredictors)
                if isempty(ans2)
                    return
                end
                if app.auto==1
                    app.automodels.(ans2{1})=f
                else
                    app.models.(ans2{1})=f;
                end
                app.currentModel='BoostedTrees';
            catch
                
                app.currentModel='BoostedTrees';
                a='BoostedTreesLabel';
                b='Boosted Trees';
                app.(a).BackgroundColor='red';
                app.(a).FontColor="white";
                app.(a).FontWeight="Bold";
                app.(a).Text=[b ' Failed'];
            end
        end

        % Image clicked function: BaggedTree
        function BaggedTreeImageClicked(app, event)
            try
                [ans2,f]=trainer(app,'BaggedTrees','BaggedTreesLabel',app.trainerResp(1,2),app.trainerPredictors)
                if isempty(ans2)
                    return
                end
                if app.auto==1
                    app.automodels.(ans2{1})=f
                else
                    app.models.(ans2{1})=f;
                end
                app.currentModel='BaggedTrees';
            catch
                
                app.currentModel='BaggedTrees';
                a='BaggedTreesLabel';
                b='Bagged Trees';
                app.(a).BackgroundColor='red';
                app.(a).FontColor="white";
                app.(a).FontWeight="Bold";
                app.(a).Text=[b ' Failed'];
            end
        end

        % Image clicked function: Discriminant
        function DiscriminantImageClicked(app, event)
            try
                [ans2,f]=trainer(app,'Discriminant','DiscriminantLabel',app.trainerResp(1,2),app.trainerPredictors)
                if isempty(ans2)
                    return
                end
                if app.auto==1
                    app.automodels.(ans2{1})=f
                else
                    app.models.(ans2{1})=f;
                end
                app.currentModel='Discriminant';
            catch
                
                app.currentModel='Discriminant';
                a='DiscriminantLabel';
                b='Discriminant';
                app.(a).BackgroundColor='red';
                app.(a).FontColor="white";
                app.(a).FontWeight="Bold";
                app.(a).Text=[b ' Failed'];
            end
        end

        % Image clicked function: RUSB
        function RUSBImageClicked(app, event)
            try
                [ans2,f]=trainer(app,'RUSBoosted','RUSBoostedLabel',app.trainerResp(1,2),app.trainerPredictors)
                if isempty(ans2)
                    return
                end
                if app.auto==1
                    app.automodels.(ans2{1})=f;
                else
                    app.models.(ans2{1})=f;
                end
                app.currentModel='RUSBoosted';
            catch
                
                app.currentModel='RUSBoosted';
                a='RUSBoostedLabel';
                b='RUSBoosted';
                app.(a).BackgroundColor='red';
                app.(a).FontColor="white";
                app.(a).FontWeight="Bold";
                app.(a).Text=[b ' Failed'];
            end
        end

        % Button pushed function: RefreshButton
        function RefreshButtonPushed(app, event)
            app.MODELSListBox_3.Items=fieldnames(app.models);
        end

        % Button pushed function: PlotButton_2
        function PlotButton_2Pushed(app, event)
            modelx=(app.MODELSListBox_3.Value)
            model=app.models.(modelx).model;
            app.Panel_2.AutoResizeChildren="off";
            
            ax=subplot(2,2,1,'Parent',app.Panel_2);
            confusionMatPlot(ax,model.plots.Ygt,model.plots.Ypr);
            
            ax.ButtonDownFcn=@axClick
            
            ax=subplot(2,2,3,'Parent',app.Panel_2);
            confusionMatPlotSideVal1(ax,model.plots.Ygt,model.plots.Ypr);
            
            ax.ButtonDownFcn=@axClick
            
            ax=subplot(2,2,4,'Parent',app.Panel_2);
            confusionMatPlotSideVal2(ax,model.plots.Ygt,model.plots.Ypr);
            
            ax.ButtonDownFcn=@axClick
            
            
            modelPlotter(app,model,app.Panel_2,'all','white');
            
        end

        % Button pushed function: ManualEntryButton
        function ManualEntryButtonPushed(app, event)
            app.MainMenuPanel.Visible="off";
            app.ManualEntryPan.Visible="on";
            f=fieldnames(app.Defmodels);
            a=app.Tree3.Children;
            a.delete;
            for i=1:length(f)
                
                cat1=uitreenode(app.Tree3,'Text',f{i});
                
                
            end
        end

        % Image clicked function: Image9
        function Image9Clicked(app, event)
            app.MainMenuPanel.Visible="on";
            app.ManualEntryPan.Visible="off";
            app.ModelMetricsPanel.Visible="off";
        end

        % Button pushed function: ExcelEntryButton
        function ExcelEntryButtonPushed(app, event)
            app.MainMenuPanel.Visible="off";
            app.ExcelEntryPanel.Visible="on";
            app.ButtonPanel.Visible="on";
            app.UITableExcelEntry.Visible="off";
            app.ModelsListBox_3.Items=fieldnames(app.Defmodels);
            app.progressbar.Visible="off";
        end

        % Button pushed function: LoadButton
        function LoadButtonPushed(app, event)
            app.TrueClass=[];
            
            
            removeStyle(app.UITableExcelEntry);
            
            [a,b]=uigetfile({'*.xlsx;*.xls;*.csv','Excel files (*.xlsx,*.csv)'});
            
            if a==0
                return  ;
            end
            fig = app.GliomaIDHMutationDiagnosisToolUIFigure;
            d = uiprogressdlg(fig,'Title','Please Wait',...
                'Message','Loading the table');
            
            app.ButtonPanel.Position = [11 35 252 489];
            
            % Perform calculations
            % ...
            d.Value = .33;
            d.Message = 'Loading your data';
            
            a=readtable([b filesep   a],'ReadVariableNames',true);
            app.UITableExcelEntry.Data=a;
            set(app.UITableExcelEntry, 'ColumnName',a.Properties.VariableNames);
            app.indices;
            
            app.UITableExcelEntry.BackgroundColor = [1 1 .9; .9 .95 1];
            app.UITableExcelEntry.ColumnSortable = true;
            d.Value=0.87
            app.ButtonPanel.Position = [11 35 252 489];
            
            %msgbox("Excel File Loaded",'Load Complete','none','replace');
            app.UITableExcelEntry.Visible="on";
            delete(d);
        end

        % Image clicked function: Image10
        function Image10Clicked(app, event)
            app.MainMenuPanel.Visible="on";
            app.ExcelEntryPanel.Visible="off";
            app.ModelMetricsPanel.Visible="off";
        end

        % Cell selection callback: UITableExcelEntry
        function UITableExcelEntryCellSelection(app, event)
            indices = event.Indices;
            app.indices=indices;
        end

        % Button pushed function: ClassifyButton
        function ClassifyButtonPushed2(app, event)
            app.TERTIndices=0;
            app.IDHIndices=0;
            app.DoubleIndices=0;
            app.reqVars;
            app.progressbar.Visible="on";
            app.ProcessingLabel.Visible="on";
            step=floor(700/size(app.indices,1));
            app.indices(:,1)
            for i=1:size(app.indices,1)
                % yellow
                gCH=[ones(60,step*i) zeros(60,step*(size(app.indices,1)-i))];
                imshow(cat(3,zeros(size(gCH)),gCH,zeros(size(gCH))),'Parent',app.progressbar);
                drawnow();
                app.indices(i,1);
                
                sec=app.ModelsListBox_3.Value;
                table=app.UITableExcelEntry.Data;
                values=table(app.indices(i,1),:);
                
                
                vals=(values(:,app.reqVars))
                vals=table2array(vals);
                if (app.Defmodels.(sec).CRLB)~=-1
                    vals2=table2array(values(:,app.reqVars2))>(app.Defmodels.(sec).CRLB)
                else
                    vals2=ones(1,length(vals))
                end
                vals(vals2)=0
                res=app.Defmodels.(sec).predictFcn(array2table(vals,'VariableNames',app.Defmodels.(sec).Classification.PredictorNames));
                disp(['Row ' num2str(app.indices(i,2)) 'classification result is' num2str(res) ])
                
                app.NaNLabel.Text=num2str(100*app.Defmodels.(sec).plots.Accuracy);
                app.NaNLabel_2.Text=num2str(100*app.Defmodels.(sec).plots.specificity{2});
                app.NaNLabel_3.Text=num2str(100*app.Defmodels.(sec).plots.sensitivity{2});
                app.NaNLabel_4.Text=app.Defmodels.(sec).classes{res+1};
                app.ModelMetricsPanel.Visible="on";
                if res==1
                    s = uistyle('BackgroundColor','blue','FontColor','white','FontWeight','Bold');
                    addStyle(app.UITableExcelEntry,s,'row',app.indices(i,1));
                    app.TrueClass(end+1)=app.indices(i,1);
                    
                else
                    s = uistyle('BackgroundColor','green','FontColor','black','FontWeight','Bold');
                    addStyle(app.UITableExcelEntry,s,'row',app.indices(i,1));
                    
                end
            end
            app.progressbar.Visible="off";
            app.ProcessingLabel.Visible="off";
        end

        % Button pushed function: LCModelEntryButton
        function LCModelEntryButtonPushed(app, event)
            app.LCModelEntryPanel.Visible="on";
            app.MainMenuPanel.Visible="off";
            app.ModelsListBox_2.Items=fieldnames(app.Defmodels);
            
        end

        % Button pushed function: ExportClassesButton
        function ExportClassesButtonPushed(app, event)
            
            
            table=app.UITableExcelEntry.Data;
            exporter(table,app.indices(:,1),app.TrueClass)
            
        end

        % Button pushed function: PlotsButton
        function PlotsButtonPushed(app, event)
            app.PlotsMenuPanel.Visible= "on";
            app.MainMenuPanel.Visible="off";
            app.PlotsPanel.Visible="on";
            app.ModelMetricsPanel.Visible="off";
            
        end

        % Image clicked function: Image11
        function Image11Clicked(app, event)
            app.plottype
            if app.plottype~=1
                app.MainMenuPanel.Visible="on";
                app.PlotsPanel.Visible="off";
                app.plottingpanels1.Visible="off";
                app.plottingpanels2.Visible="off";
                app.PlotsMenuPanel.Visible="off";
                app.ModelPlotsPanel.Visible="off";
                app.ModelMetricsPanel.Visible="off";
            elseif app.plottype==1
                
                app.MainMenuPanel_3.Visible="on";
                app.PlotsPanel.Visible="off";
                app.plottingpanels1.Visible="off";
                app.plottingpanels2.Visible="off";
                app.PlotsMenuPanel.Visible="off";
                app.ModelPlotsPanel.Visible="off";
                app.ModelMetricsPanel.Visible="off";
                app.MR_Spectroscopy.Visible="off";
                app.plottype=0;
                app.MassSpectroscopy.Visible="on";
                app.LCMODELPLOTS.Visible="on";
            end
        end

        % Button pushed function: ModelPlots
        function ModelPlotsButtonPushed(app, event)
            app.ModelPlotsPanel.Visible="on";
            app.PlotsMenuPanel.Visible="off";
            app.plottingpanels1.Visible="off";
            app.plottingpanels2.Visible="off";
        end

        % Button pushed function: RefreshButton_2
        function RefreshButton_2Pushed(app, event)
            if app.plottype==1
                app.ModelsListBox.Items=fieldnames(app.DefMassmodels);
                
            else
                
                app.ModelsListBox.Items=fieldnames(app.Defmodels);
            end
        end

        % Button pushed function: PlotButton_3
        function PlotButton_3Pushed(app, event)
            app.ModelPlotsPanel.Position=[15,88,237,439];
            app.plottingpanels1.Visible="on";
            app.plottingpanels2.Visible="on";
            modelx=(app.ModelsListBox.Value)
            if app.plottype==1
                model=app.DefMassmodels.(modelx)
                
            else
                model=app.Defmodels.(modelx)
            end
            app.plottingpanels1.AutoResizeChildren="off";
            app.plottingpanels2.AutoResizeChildren="off";
            objs=get(app.plottingpanels2,'Children');
            delete(objs);
            app.ModelPlotsPanel.Position=[15,88,237,439];
            size(model.plots.Ygt)
            size(model.plots.Ypr)
            
            ax=subplot(2,2,1,'Parent',app.plottingpanels2);
            confusionMatPlot(ax,model.plots.Ygt,model.plots.Ypr);
            ax.ButtonDownFcn=@axClick
            
            
            ax=subplot(2,2,2,'Parent',app.plottingpanels2);
            confusionMatPlotSideVal1(ax,model.plots.Ygt,model.plots.Ypr);
            ax.ButtonDownFcn=@axClick
            
            
            ax=subplot(2,2,3,'Parent',app.plottingpanels2);
            confusionMatPlotSideVal2(ax,model.plots.Ygt,model.plots.Ypr);
            ax.ButtonDownFcn=@axClick
            
            
            
            modelPlotter(app,model,app.plottingpanels2,'all','white');
        end

        % Image clicked function: Image12
        function Image12Clicked(app, event)
            app.MainMenuPanel.Visible="on";
            app.ModelPlotsPanel.Visible="off";
            app.PlotsPanel.Visible="off";
            app.ModelMetricsPanel.Visible="off";
            
        end

        % Image clicked function: Image12_2
        function Image12_2Clicked(app, event)
            app.PlotsMenuPanel.Visible="on";
            app.ModelPlotsPanel.Visible="off";
            app.plottingpanels1.Visible="off";
            app.plottingpanels2.Visible="off";
        end

        % Button pushed function: LCMODELPLOTS
        function LCMODELPLOTSButtonPushed(app, event)
            app.LCModelPlotsPanel.Visible="on";
            app.ModelPlotsPanel.Visible="off";
            app.plottingpanels1.Visible="on";
            delete(get(app.plottingpanels2,'Children'));
            app.plottingpanels2.Visible="on";
        end

        % Image clicked function: Image13
        function Image13Clicked(app, event)
            app.MainMenuPanel.Visible= "on";
            app.LCModelPlotsPanel.Visible="off";
            app.plottingpanels1.Visible="off";
            app.plottingpanels2.Visible="off";
            app.PlotsMenuPanel.Visible="off";
            app.PlotsPanel.Visible="off";
            objs=get(app.plottingpanels2,'Children');
            delete(objs);
            
        end

        % Image clicked function: Image13_2
        function Image13_2Clicked(app, event)
            app.LCModelPlotsPanel.Visible="off";
            app.plottingpanels1.Visible="off";
            app.plottingpanels2.Visible="off";
            app.PlotsMenuPanel.Visible="on";
            app.PlotsPanel.Visible="on";
            objs=get(app.plottingpanels2,'Children');
            delete(objs);
            
        end

        % Button pushed function: LoadButton_2
        function LoadButton_2Pushed(app, event)
            app.LCModelPlotsPanel.Position=[34,80,338,544];
            
            [app.tabledata,app.metabs,app.corrMatrix,app.sp,app.bg,app.fit,app.coord_filename]= load_lcmodel(app);
            test=sqrt(length(app.tabledata));
            app.plottingpanels1.AutoResizeChildren="off";
            app.plottingpanels2.AutoResizeChildren="off";
            app.LCModelPlotsPanel.Position=[34,80,338,544];
            col=ceil(test);
            sub=round(test);
            app.coord_filename;
            linewidth=2;
            color=[1,1,1];
            objs=get(app.plottingpanels1,'Children')
            delete(objs)
            objs=get(app.plottingpanels2,'Children')
            delete(objs)
            
            
            set(app.LCModelPlotsPanel,'Position',[17,79,248,453]);
            for i=1:length(app.tabledata)
                
                if length(app.tabledata)>1
                    
                    app.ax{i}= subplot(sub,col,i,'Parent',app.plottingpanels2);
                    app.plottingpanels2.Visible="on";
                else
                    app.ax{i}=subplot(sub,col,i,'Parent',app.plottingpanels2);
                    app.plottingpanels2.Visible="on";
                end
                
                
                ppm=app.bg{i}.ppm;
                legendtext='';
                legendtext{1}=('In vivo');
                legendtext{2}=('Baseline');
                legendtext{3}=('Fit');
                app.LCModelPlotsPanel.Position=[34,80,338,544];
                
                app.GliomaIDHMutationDiagnosisToolUIFigure.AutoResizeChildren='off';
                pt_axis=0;
                
                b(i,1)=plot(app.ax{i},ppm, fliplr(app.sp{i}.specs'),'LineWidth',linewidth,'Color',color);
                
                text(app.ax{i},ppm(1)+ppm(1)*0.01,app.sp{i}.specs(end), legendtext{1},"Color",color);
                pt_axis=pt_axis-max(app.bg{i}.specs')*1.10+mean(app.bg{i}.specs);
                
                hold (app.ax{i},'on')
                b(i,2)=plot(app.ax{i},ppm,fliplr(app.bg{i}.specs')+pt_axis,'LineWidth',linewidth,'Color',color); %!!!!
                text(app.ax{i},ppm(1)+ppm(1)*0.01,app.bg{i}.specs(end)+pt_axis, legendtext{2},"Color",color);
                pt_axis=pt_axis-max(app.fit{i}.specs')*1.10+mean(app.fit{i}.specs);
                
                
                b(i,3)=plot(app.ax{i},[ppm], fliplr(app.fit{i}.specs')+pt_axis,'LineWidth',linewidth,'Color',color);
                text(app.ax{i},ppm(1)+ppm(1)*0.01,app.fit{i}.specs(end)+pt_axis, legendtext{3},"Color",color);
                
                
                hold (app.ax{i},'off');
                app.MetabolitesListBox.Items={'In vivo','Baseline','Fit',app.tabledata{i}.name{:}};
                app.MetabolitesListBox.ItemsData=cellstr(string([1:length(app.tabledata{i}.name)+3]));
                finalt=strsplit(string(app.coord_filename{i}),filesep  );
                title(app.ax{i},['\color{white}' finalt{end}]);
                set(app.ax{i},'ytick',[]);
                set(app.ax{i},'yticklabel',[ppm(end):ppm(1)]);
                set(app.ax{i},'xtick',[ppm(end):0.5:ppm(1)]);
                set(app.ax{i},'Color',app.plottingpanels1.BackgroundColor);
                set(app.ax{i},'xticklabel',[ppm(end):0.5:ppm(1)]);
                set(app.ax{i},'BOX',"off");
                set(app.ax{i},'XColor',app.plottingpanels1.BackgroundColor);
                set(app.ax{i},'YColor',app.plottingpanels1.BackgroundColor);
                app.LCModelPlotsPanel.Position=[34,80,338,544];
                
                xlim(app.ax{i},[ppm(end),ppm(1)+ppm(1)*0.2]);
                ylim(app.ax{i},[pt_axis*1.50,max(b(i,1).YData)*1.15]);
                app.ax{i}.ButtonDownFcn=@app.axClick;
                app.position{i}=app.ax{i}.OuterPosition;
                hold (app.ax{i},'off');
                
            end
        end

        % Button pushed function: PlotButton_4
        function PlotButton_4Pushed(app, event)
            linewidth=2;
            test=sqrt(length(app.tabledata));
            app.plottingpanels1.AutoResizeChildren="off";
            col=ceil(test);
            sub=round(test);
            app.coord_filename;
            linewidth=1;
            linecolor=[1,1,1];
            FontSize=8;
            dmaxx=0;
            wait=uiprogressdlg(app.GliomaIDHMutationDiagnosisToolUIFigure,"Message",'Plotting Spectra(s)');
            for i=1:length(app.tabledata)
                %cla(app.ax{i},'reset');
                
                app.ax{i}= subplot(sub,col,i,'Parent',app.plottingpanels2);
                
                
                
                
                ppm=app.bg{1}.ppm;
                values=app.MetabolitesListBox.Value;
                modplot=str2double(values);
                wait.Value=((i)/length(app.tabledata))
                maxx=app.plotSpectra(modplot,i,ppm,linewidth,app.ax{i},linecolor,FontSize);
                %{
                if max(abs(maxx))>max(abs(dmaxx))
                    dmaxx=maxx
                end
                %}
                set(app.ax{i},'ylim',maxx)
                set(app.ax{i},'Color',app.plottingpanels2.BackgroundColor);
                set(app.ax{i},'YColor',app.plottingpanels2.BackgroundColor);
                
            end
            child=findobj(app.plottingpanels2,'type','Axes')
            %set(child,'ylim',dmaxx)
            
            delete(wait);
            ax.AutoResizeChildren="on";
        end

        % Image clicked function: Image2
        function Image2Clicked(app, event)
            
        end

        % Image clicked function: Image14
        function Image14Clicked(app, event)
            app.MainMenuPanel.Visible="on";
            app.LCModelEntryPanel.Visible="off";
            app.plottingpanels1.Visible="off";
            app.ModelMetricsPanel.Visible="off";
            app.ResultsPanel.Visible="off";
        end

        % Button pushed function: LoadButton_3
        function LoadButton_3Pushed(app, event)
            [app.tabledata,app.metabs,app.corrMatrix,app.sp,app.bg,app.fit,app.coord_filename]= load_lcmodel(app);
            test=sqrt(length(app.tabledata));
            app.ResultsPanel.AutoResizeChildren="off";
            app.ResultsPanel.Visible="on";
            sub=ceil(test);
            col=round(test);
            app.coord_filename;
            linewidth=2;
            color=[1,1,1];
            objs=get(app.ResultsPanel,'Children')
            
            delete(objs)
            app.CoordFilesListBox.Items=app.coord_filename;
            for i=1:length(app.tabledata)
                
                if length(app.tabledata)>1
                    
                    app.ax{i}= subplot(sub,col,i,'Parent',app.ResultsPanel);
                    app.plottingpanels1.Visible="on";
                else
                    app.ax{i}=subplot(sub,col,i,'Parent',app.ResultsPanel);
                    app.plottingpanels1.Visible="on";
                end
                
                
                ppm=app.bg{i}.ppm;
                legendtext='';
                legendtext{1}=('\color{white}In vivo');
                
                
                pt_axis=0;
                
                b(i,1)=plot(app.ax{i},ppm, fliplr(app.sp{i}.specs'),'LineWidth',linewidth,'Color',color);
                
                text(app.ax{i},ppm(1)+ppm(1)*0.01,app.sp{i}.specs(end), legendtext{1},"Color",color);
                pt_axis=pt_axis-max(app.bg{i}.specs')*1.10+mean(app.bg{i}.specs);
                
                
                hold (app.ax{i},'off');
                set(app.ax{i},'Color',app.ResultsPanel.BackgroundColor);
                set(app.ax{i},'XColor',app.ResultsPanel.BackgroundColor);
                set(app.ax{i},'YColor',app.ResultsPanel.BackgroundColor);
                
                finalt=strsplit(string(app.coord_filename{i}),filesep  );
                title(app.ax{i},['\color{white}' finalt{end}]);
                set(app.ax{i},'ytick',[]);
                set(app.ax{i},'yticklabel',[ppm(end):ppm(1)]);
                set(app.ax{i},'xtick',[ppm(end):0.5:ppm(1)]);
                
                set(app.ax{i},'xticklabel',[ppm(end):0.5:ppm(1)]);
                
                xlim(app.ax{i},[ppm(end),ppm(1)+ppm(1)*0.2]);
                ylim(app.ax{i},[pt_axis*1.50,max(b(i,1).YData)*1.15]);
                app.ax{i}.ButtonDownFcn=@app.axClick;
                app.position{i}=app.ax{i}.OuterPosition;
                hold (app.ax{i},'off');
                
            end
            
        end

        % Button pushed function: ClassifyButton_2
        function ClassifyButton_2Pushed(app, event)
            
            sec=app.ModelsListBox_2.Value
            varss=app.Defmodels.(sec).RequiredVariables
            test=~cellfun('isempty',strfind(varss,'Ratio'));
            [~,ind]=ismember(app.CoordFilesListBox.Value ,app.CoordFilesListBox.Items);
            
            if sum(test)>0
                varss=strrep(varss,'Ratio','');
                [~,varInd]=ismember(varss,app.tabledata{ind}.name);
                conc=app.tabledata{ind}.relative_conc(varInd)
                
                
            else
                
                [~,varInd]=ismember(varss,app.tabledata{ind}.name);
                
                
                conc=app.tabledata{ind}.concentration(varInd)
            end
            
            app.NaNLabel.Text=num2str(100*app.Defmodels.(sec).plots.Accuracy);
            app.NaNLabel_2.Text=num2str(100*app.Defmodels.(sec).plots.specificity{2});
            app.NaNLabel_3.Text=num2str(100*app.Defmodels.(sec).plots.sensitivity{2});
            res=app.Defmodels.(sec).predictFcn(array2table(conc,'VariableNames',app.Defmodels.(sec).Classification.PredictorNames))
            app.NaNLabel_4.Text=app.Defmodels.(sec).classes{(res)+1};
            
            app.ModelMetricsPanel.Visible="on";
        end

        % Value changed function: ModelsListBox_3
        function ModelsListBox_3ValueChanged(app, event)
            value = app.ModelsListBox_3.Value;
            varss=app.Defmodels.(value).RequiredVariables;
            app.Class1Label.Text=app.Defmodels.(value).classes{1};
            app.Class2Label.Text=app.Defmodels.(value).classes{2};
            
            [~,inds]=ismember(varss,app.UITableExcelEntry.Data.Properties.VariableNames);
            
            
            message={'This model has been generated with CRLB threshold please assign standard deviations ','Some Metabolites names are NOT Entered Properly '};
            
            app.reqVars=inds;
            if ~isempty(find(inds==0)) || app.Defmodels.(value).CRLB~=-1
                
                answer = questdlg(message((sum(inds==0)>0)+1), ...
                    'Warning Menu', ...
                    'Select Manually','Show the improper metabolites','Select Manually');
                switch answer
                    case 'Select Manually'
                        if ~isempty(find(inds==0))
                            [app.reqVars,f]=assignVals(app,varss,app.UITableExcelEntry.Data.Properties.VariableNames);
                            waitfor(f);
                            s= uistyle("BackgroundColor",'green',"FontColor",'black','FontWeight','Bold');
                            addStyle(app.UITableExcelEntry,s,'column',app.reqVars);
                        end
                        if app.Defmodels.(value).CRLB~=-1
                            [app.reqVars2,f]=assignVals3(app,varss,app.UITableExcelEntry.Data.Properties.VariableNames);
                            waitfor(f);
                            app.reqVars
                            app.reqVars2
                            
                            s2 = uistyle("BackgroundColor",'red',"FontColor",'white');
                            s3= uistyle("BackgroundColor",'black',"FontColor",'white');
                            s4= uistyle("BackgroundColor",'yellow',"FontColor",'black');
                            addStyle(app.UITableExcelEntry,s4,'column',app.reqVars);
                            addStyle(app.UITableExcelEntry,s3,'column',app.reqVars2);
                            
                            arr=table2array(app.UITableExcelEntry.Data(:,app.reqVars2))<app.Defmodels.(value).CRLB
                            
                            
                            ind2=sum(arr,2)==size(arr,2);
                            [ind3,~]=find(ind2==0)
                            [app.row,~]=find(ind2==1);
                            %addStyle(app.UITableExcelEntry,s2,'row',ind3);
                            addStyle(app.UITableExcelEntry,s4,'column',app.reqVars);
                            addStyle(app.UITableExcelEntry,s3,'column',app.reqVars2);
                            
                        end
                        
                        
                        
                        
                    case 'Show the improper metabolites'
                        
                        
                        selection = uiconfirm(app.GliomaIDHMutationDiagnosisToolUIFigure,'Improper Metabolite(s) naming. Follow the protocol.'...
                            , strjoin({varss{find(inds==0)}},' ,'),...
                            'Icon','warning');
                end
                
            end
            
            
            
            
            
            
            
        end

        % Button pushed function: TrainNewModelButton
        function TrainNewModelButtonPushed(app, event)
            app.MainMenuPanel_2.Visible="off";
            app.Image20.Visible="on";
            app.ClicktoLoadDataLabel.Visible="on";
            app.BacktoMainMenuLabel_9.Visible="on";
            app.Image20_2.Visible="on";
        end

        % Button pushed function: TrainerLoad
        function TrainerLoadButtonPushed2(app, event)
            removeStyle(app.UITable2);
            app.crlb=-1;
            app.reqVars=0;
            pos=[34,47,334,544];
            app.Panel_3.Position=pos;
            removeStyle(app.UITable2);
            [a,b]=uigetfile({'*.xlsx;*.xls;*.csv','Excel files (*.xlsx,*.csv)'});
            if a==0
                return  ;
            end
            
            
            
            
            d = uiprogressdlg(app.GliomaIDHMutationDiagnosisToolUIFigure,'Title','Please Wait',...
                'Message','Loading...');
            d.Value=0.5;
            a=readtable([b filesep   a],'ReadVariableNames',true);
            app.UITable2.Data=a;
            set(app.UITable2, 'ColumnName',a.Properties.VariableNames);
            app.UITable5.Data=a;
            set(app.UITable5, 'ColumnName',a.Properties.VariableNames);
            d.Value=0.75;
            
            
            app.Variable1DropDown.Items=app.UITable2.Data.Properties.VariableNames;
            app.Variable2DropDown.Items=app.UITable2.Data.Properties.VariableNames;
            
            app.Panel_3.Position=pos
            
            app.UITable2.BackgroundColor = [1 1 .9; .9 .95 1];
            app.UITable2.ColumnSortable = true;
            app.ResponseDropDown.Items=app.UITable2.Data.Properties.VariableNames;
            app.PREDICTORSListBox.Items=app.UITable2.Data.Properties.VariableNames;
            app.UITable2.Visible="on";
            close(d);
        end

        % Image clicked function: Image17
        function Image17Clicked(app, event)
            app.AdvancedMenuPanel.Visible="off";
            app.MainMenuPanel_2.Visible="on";
        end

        % Button pushed function: predictor
        function predictorButtonPushed2(app, event)
            app.featureselection=''; % Last applied feature selection
            app.confirmedSelection=''; % Confirmed Selection
            app.Features=''; % Description
            removeStyle(app.UITable2);
            app.trainerPredictors=find(ismember(app.PREDICTORSListBox.Items, app.PREDICTORSListBox.Value)==1)
            s = uistyle("BackgroundColor",'green',"FontColor",'black','FontWeight','Bold');
            addStyle(app.UITable2,s,'column',app.trainerPredictors);
            [~,indices(1,2)]=ismember(app.ResponseDropDown.Value,app.ResponseDropDown.Items)
            app.trainerResp=indices;
            %removeStyle(app.UITable2)
            s = uistyle("BackgroundColor",'blue',"FontColor",'white','FontWeight','Bold');
            addStyle(app.UITable2,s,'column',indices(1,2));
            app.RESPONSEListBox.Items=app.UITable2.Data.Properties.VariableNames((indices(1,2)))
            str=strjoin(app.PREDICTORSListBox.Value,', ');
            app.UITable5.Data=app.UITable2.Data;
            app.PredictorsLabel.Text=['*Predictors are selected as ' str];
            app.ResponseLabel.Text=['*Response is selected as ' app.ResponseDropDown.Value];
            
        end

        % Image clicked function: Image19
        function Image19Clicked(app, event)
            app.TrainingPanel.Visible="off";
            app.AdvancedMenuPanel.Visible="off";
            app.MainMenuPanel_2.Visible="on";
        end

        % Image clicked function: Image19_2
        function Image19_2Clicked(app, event)
            app.TrainingPanel.Visible="off";
            app.AdvancedMenuPanel.Visible="on";
        end

        % Button pushed function: plots_3
        function plots_3ButtonPushed(app, event)
            
            if isempty(app.trainerPredictors) | isempty(app.trainerResp)
                
                msgbox('Please Select Predictors and Response','ERROR',"non-modal");
                
                
            else
                app.Variable1DropDown.Items={app.PREDICTORSListBox.Items{app.trainerPredictors}};
                app.trainertab.Visible="on";
                app.Variable2DropDown.Items={app.PREDICTORSListBox.Items{app.trainerPredictors}};
                app.AdvancedMenuPanel.Visible="off";
            end
        end

        % Image clicked function: Image20_2
        function Image20_2Clicked(app, event)
            app.Image20.Visible="off";
            app.ClicktoLoadDataLabel.Visible="off";
            app.BacktoMainMenuLabel_9.Visible="off";
            app.Image20_2.Visible="off";
            app.MainMenuPanel_2.Visible="on";
            
        end

        % Image clicked function: Image20
        function Image20Clicked(app, event)
            app.crlb=-1;
            app.reqVars=0;
            pos=[34,47,334,544];
            removeStyle(app.UITable2   );
            [a,b]=uigetfile({'*.xlsx;*.xls;*.csv','Excel files (*.xlsx,*.csv)'});
            if a==0
                return  ;
            end
            dd = uiprogressdlg(app.GliomaIDHMutationDiagnosisToolUIFigure,'Title','Please Wait',...
                'Message','Loading...');
            dd.Value=0.5;
            
            app.Image20.Enable="off";
            a=readtable([b filesep   a],'ReadVariableNames',true);
            app.UITable2.Data=a;
            set(app.UITable2, 'ColumnName',a.Properties.VariableNames);
            app.UITable5.Data=a;
            set(app.UITable5, 'ColumnName',a.Properties.VariableNames);
            
            dd.Value=0.75;
            app.Variable1DropDown.Items=app.UITable2.Data.Properties.VariableNames;
            app.Variable2DropDown.Items=app.UITable2.Data.Properties.VariableNames;
            
            app.Panel_3.Position=pos
            
            app.UITable2.BackgroundColor = [1 1 .9; .9 .95 1];
            app.UITable2.ColumnSortable = true;
            app.ResponseDropDown.Items=app.UITable2.Data.Properties.VariableNames;
            app.PREDICTORSListBox.Items=app.UITable2.Data.Properties.VariableNames;
            app.Image20.Enable="on";
            
            app.UITable2.Visible="on";
            app.AdvancedMenuPanel.Visible="on";
            app.Image20.Visible="off";
            app.ClicktoLoadDataLabel.Visible="off";
            app.BacktoMainMenuLabel_9.Visible="off";
            app.Image20_2.Visible="off";
            app.ResponseLabel.Visible="on";
            app.PredictorsLabel.Visible="on";
            app.Panel_3.Position=pos;
            close(dd);
        end

        % Image clicked function: Image16
        function Image16Clicked(app, event)
            app.MainMenuPanel_2.Visible="on";
            app.trainertab.Visible="off";
        end

        % Image clicked function: Image16_2
        function Image16_2Clicked(app, event)
            app.AdvancedMenuPanel.Visible="on";
            app.trainertab.Visible="off";
        end

        % Button pushed function: LoadButton_4
        function LoadButton_4Pushed(app, event)
            app.reqVars
            app.UITableExcelEntry.Data(:,app.reqVars)
            dadada(app.UITableExcelEntry.Data(:,app.reqVars),app.reqVars);
            
        end

        % Image clicked function: Image18_2
        function Image18_2Clicked(app, event)
            app.HoldOutSlider.Enable
            app.HoldOutSlider.Visible
            if app.HoldOutSlider.Enable=="on"
                set(app.HoldOutSlider,'Enable',"off");
                set(app.HoldOutSlider,'Visible',"off");
                app.HoldOutSlider.Limits=[0,50];
                app.HoldOutSlider.Value=0;
                
            else
                set(app.HoldOutSlider,'Enable',"on");
                set(app.HoldOutSlider,'Visible',"on");
                app.HoldOutSlider.Limits=[10,50];
                app.HoldOutSlider.Value=10;
            end
        end

        % Image clicked function: Image21
        function Image21Clicked(app, event)
            
            
            removeStyle(app.UITable3);
            
            
            
            [a,b]=uigetfile({'*.xlsx;*.xls;*.csv','Excel files (*.xlsx,*.csv)'});
            
            if a==0
                return  ;
            end
            dd = uiprogressdlg(app.GliomaIDHMutationDiagnosisToolUIFigure,'Title','Please Wait',...
                'Message','Loading...');
            dd.Value=0.5;
            a=readtable([b filesep   a],'ReadVariableNames',true);
            app.UITable3.Data=a;
            set(app.UITable3, 'ColumnName',a.Properties.VariableNames);
            app.indices;
            dd.Value=0.75;
            app.UITable3.BackgroundColor = [1 1 .9; .9 .95 1];
            app.UITable3.ColumnSortable = true;
            app.ButtonPanel.Position = [11 111 252 393];
            
            app.UITable3.Visible="on";
            app.ClassifierMainPanel.Visible="off";
            app.ExcelEntry.Visible="on";
            app.MODELSListBox_4.Items=fieldnames(app.models);
            dd.Value=1;
            close(dd);
        end

        % Button pushed function: LoadButton_5
        function LoadButton_5Pushed(app, event)
            
            
            removeStyle(app.UITable3);
            
            
            [a,b]=uigetfile({'*.xlsx;*.xls;*.csv','Excel files (*.xlsx,*.csv)'});
            
            if a==0
                return  ;
            end
            dd = uiprogressdlg(app.GliomaIDHMutationDiagnosisToolUIFigure,'Title','Please Wait',...
                'Message','Loading...');
            dd.Value=0.5;
            
            a=readtable([b filesep   a],'ReadVariableNames',true);
            app.UITable3.Data=a;
            set(app.UITable3, 'ColumnName',a.Properties.VariableNames);
            app.indices;
            dd.Value=0.75;
            app.UITable3.BackgroundColor = [1 1 .9; .9 .95 1];
            app.UITable3.ColumnSortable = true;
            app.ButtonPanel.Position = [11 111 252 393];
            dd.Value=1;
            %msgbox("Excel File Loaded",'Load Complete','none','replace');
            app.UITable3.Visible="on";
            close(dd);
        end

        % Value changed function: MODELSListBox_4
        function MODELSListBox_4ValueChanged(app, event)
            value = app.MODELSListBox_4.Value;
            varss=app.models.(value).RequiredVariables;
            removeStyle(app.UITable3);
            
            [~,inds]=ismember(varss,app.UITable3.Data.Properties.VariableNames)
            app.reqVars=inds;
            
            message={'This model has been generated with CRLB threshold please assign standard deviations ','Some Metabolites names are NOT Entered Properly '};
            
            
            
            if ~isempty(find(inds==0)) || app.models.(value).CRLB~=-1
                
                answer = questdlg(message((sum(inds==0)>0)+1), ...
                    'Warning Menu', ...
                    'Select Manually','Show the improper metabolites','Select Manually');
                waitfor(answer)
                switch answer
                    case 'Select Manually'
                        if ~isempty(find(inds==0))
                            [app.reqVars,f]=assignVals(app,varss,app.UITable3.Data.Properties.VariableNames);
                            waitfor(f);
                        end
                        if app.models.(value).CRLB~=-1
                            [app.reqVars2,f]=assignVals3(app,varss,app.UITable3.Data.Properties.VariableNames);
                            waitfor(f);
                            
                            try
                                s2 = uistyle("BackgroundColor",'red',"FontColor",'white');
                                s3= uistyle("BackgroundColor",'black',"FontColor",'white');
                                s4= uistyle("BackgroundColor",'yellow',"FontColor",'black');
                                addStyle(app.UITable3,s4,'column',app.reqVars);
                                addStyle(app.UITable3,s3,'column',app.reqVars2);
                                
                                arr=table2array(app.UITable3.Data(:,app.reqVars2))<app.models.(value).CRLB
                                
                                
                                ind2=sum(arr,2)==size(arr,2);
                                [ind3,~]=find(ind2==0)
                                [app.row,~]=find(ind2==1);
                                %addStyle(app.UITable3,s2,'row',ind3);
                                addStyle(app.UITable3,s4,'column',app.reqVars);
                                addStyle(app.UITable3,s3,'column',app.reqVars2);
                            catch
                            end
                        end
                        
                        
                        
                        
                    case 'Show the improper metabolites'
                        
                        
                        selection = uiconfirm(app.GliomaIDHMutationDiagnosisToolUIFigure,...
                            strjoin({varss{find(inds==0)}},' ,'),'Improper Metabolite(s) naming. Follow the protocol.',...
                            'Icon','warning');
                    case 'Otherwise'
                        
                end
                
            else
                app.reqVars2=app.reqVars
            end
            
        end

        % Button pushed function: ExportClassesButton_2
        function ExportClassesButton_2Pushed(app, event)
            
            table=app.UITable3.Data;
            exporter(table,app.indices(:,1),app.TrueClass)
            
        end

        % Button pushed function: ClassifyButton_3
        function ClassifyButton_3Pushed(app, event)
            removeStyle(app.UITable3);
            for i=1:size(app.indices,1)
                % yellow
                
                
                
                sec=app.MODELSListBox_4.Value;
                table=app.UITable3.Data;
                values=table(app.indices(i,1),:);
                
                
                vals=table2array(values(:,app.reqVars))
                %vals=[vals(:,1:end-1)./vals(:,end) vals(:,end)];
                
                vars={table.Properties.VariableNames{app.reqVars}};
                vars2={table.Properties.VariableNames{app.reqVars2}};
                stds=table2array(values(:,app.reqVars2))
                stdsT=app.models.(sec).CRLB
                if sum(stds>stdsT)>0
                    
                    indc=find((stds>stdsT)==1)
                    
                    vals((indc))=0
                    
                    str=strjoin({vars{indc}},',')
                    
                    
                    
                end
                vals
                res=app.models.(sec).predictFcn(array2table(vals,'VariableNames',vars));
                disp(['Row ' num2str(app.indices(i,2)) ' classification result is ' num2str(res) ])
                
                app.Class1Label_2.Text=string(app.models.(sec).classes{1});
                app.Class2Label_2.Text=string(app.models.(sec).classes{2});
                
                
%                 if length(stds)*0.5<sum(stds>stdsT)
%                     res=-1;
%                 end
                
                if res==1
                    s = uistyle('BackgroundColor','green','FontWeight','Bold');
                    addStyle(app.UITable3,s,'row',app.indices(i,1));
                    app.TrueClass(end+1)=app.indices(i,1);
                    
                elseif res==0
                    s = uistyle('BackgroundColor','blue','FontColor','white','FontWeight','Bold');
                    addStyle(app.UITable3,s,'row',app.indices(i,1));
                else
                    s = uistyle('BackgroundColor','red','FontColor','white','FontWeight','Bold');
                    addStyle(app.UITable3,s,'row',app.indices(i,1));
                end
            end
            
        end

        % Image clicked function: Image21_2
        function Image21_2Clicked(app, event)
            app.ClassifierMainPanel.Visible="off";
            app.ManualPanel.Visible="on";
            f=fieldnames(app.models);
            a=app.Tree3_2.Children;
            a.delete;
            for i=1:length(f)
                
                cat1=uitreenode(app.Tree3_2,'Text',f{i});
                
                
            end
        end

        % Button pushed function: EnterButton_2
        function EnterButton_2Pushed(app, event)
            index=find(strcmp(app.MetaboliteMenuDropDown_2.Items,(app.MetaboliteMenuDropDown_2.Value)));
            cel2={app.MetaboliteMenuDropDown_2.Value  ' = ' app.EditField_2.Value};
            try
                app.MetaboliteMenuDropDown_2.Value=app.MetaboliteMenuDropDown_2.Items(index+1);
            catch
            end
            app.ListBox_3.Items{index}=[cel2{:}];
            app.ListBox_3.Value=app.ListBox_3.Items{index};
            app.manualControl(index)=1;
            app.manualValues(index)=str2num(app.EditField_2.Value);
            if isempty(find(app.manualControl==0));
                app.Classify_2.Enable="on";
            end
        end

        % Image clicked function: Image9_2
        function Image9_2Clicked(app, event)
            app.ManualPanel.Visible="off";
            app.ClassifierMainPanel.Visible="on";
        end

        % Selection changed function: Tree3_2
        function Tree3_2SelectionChanged(app, event)
            selectedNodes = app.Tree3_2.SelectedNodes;
            
            app.ModelMetricsPanel.Visible='off';
            
            
            reqAdder(app,app.models,{"MetaboliteMenuDropDown_2","ListBox_3"},selectedNodes.Text)
            app.manualControl=zeros(1,size(app.ListBox_3.Items,2));
            app.manualValues=zeros(1,size(app.ListBox_3.Items,2));
            
        end

        % Button pushed function: Classify_2
        function Classify_2ButtonPushed(app, event)
            sec=app.Tree3_2.SelectedNodes.Text;
            app.NaNLabel_5.Text=num2str(100*app.models.(sec).plots.Accuracy);
            app.NaNLabel_6.Text=num2str(100*app.models.(sec).plots.specificity{2});
            app.NaNLabel_7.Text=num2str(100*app.models.(sec).plots.sensitivity{2});
            vars=app.MetaboliteMenuDropDown_2.Items;
            res=app.models.(sec).predictFcn(array2table(app.manualValues,'VariableNames',vars))
            app.NaNLabel_8.Text=app.models.(sec).classes{res+1};
            app.ModelMetricsPanel_2.Visible="on";
            
        end

        % Value changed function: ListBox_3
        function ListBox_3ValueChanged(app, event)
            value = app.ListBox_3.Value;
            
        end

        % Value changed function: EditField_2
        function EditField_2ValueChanged(app, event)
            value = app.EditField_2.Value;
            
            if ~isempty(value)
                if isempty(str2num(value))
                    msgbox("Please insert only numerical inputs", 'modal',"error");
                    app.EditField.Value="";
                end
            end
            
        end

        % Cell selection callback: UITable3
        function UITable3CellSelection(app, event)
            indices = event.Indices;
            
            app.indices=indices;
            
        end

        % Button pushed function: 
        % ApplyCRLBThresholdMRSpectroscopyButton
        function ApplyCRLBThresholdMRSpectroscopyButtonPushed(app, event)
            
            
            [indx,tf] = listdlg('PromptString',{'If you want to perform CRLB Thresholding to class specific please choose the class.',...
                'Only one file can be selected at a time.',''},'ListString',app.PREDICTORSListBox.Items,...
                'SelectionMode','single','CancelString','Apply to all data','OKString','Apply to selected class only')
            if tf==1
                buff=table2array(app.UITable2.Data(:,indx));
                buff2=unique(buff);
                lst=num2str(buff2(~isnan(buff2))');
                lst=strsplit(lst,' ');
                
                [indx,tf] = listdlg('ListString',lst,'PromptString',{'If you want to perform CRLB Thresholding to class specific please choose the class.',...
                    'Only one file can be selected at a time.',''},...
                    'CancelString','Cancel','OKString','Select')
                
                switch tf
                    case 1
                        
                        equalities=strjoin(lst,'== || ')
                        buff=strjoin('buff',equalities)
                        
                        
                        [data,f,~,app.crlb]=crlbThe(app,app.UITable2.Data());
                        waitfor(f);
                        app.crlb
                        %app.UITable2.Data=data
                        %app.PREDICTORSListBox.Items=data.Properties.VariableNames;
                        %app.ResponseDropDown.Items=data.Properties.VariableNames;
                    case 0
                        
                        [data,f,~,app.crlb]=crlbThe(app,app.UITable2.Data);
                        waitfor(f);
                        app.crlb
                end
                
            else
                
                [data,f,~,app.crlb]=crlbThe(app,app.UITable2.Data);
                waitfor(f);
                app.crlb
                
            end
            
            
        end

        % Button pushed function: RunAllButton
        function RunAllButtonPushed(app, event)
            app.out=[];
            app.confirmedSelection
            strjoin({app.PREDICTORSListBox.Items{app.trainerPredictors}},',')
            app.out{2,2}=[app.confirmedSelection ' ' strjoin({app.PREDICTORSListBox.Items{app.trainerPredictors}},',')];
            app.out{2,1}=app.ResponseDropDown.Items{app.trainerResp(1,2)}    ;
            
            
            
            for i=1:app.RunsSpinner.Value
                K=2;
                app.variablesOut{i}=['Iteration' num2str(i)]
                d = uiprogressdlg(app.GliomaIDHMutationDiagnosisToolUIFigure,'Title','Please Wait',...
                    'Message','Learning Started...');
                app.auto=1;
                
                
                Image5Clicked(app, event);
                K=reportprepare(app,K,i)
                Image5_5Clicked(app, event);
                K=reportprepare(app,K,i)
                
                
                fineknnImageClicked(app, event);
                K=reportprepare(app,K,i)
                
                fineknn_2ImageClicked(app, event);
                K=reportprepare(app,K,i)
                
                fineknn_3ImageClicked(app, event);
                K=reportprepare(app,K,i)
                
                d.Value = .25;
                d.Message = 'Running.. KNN part has been finished already ';
                
                linearsvmClicked(app, event);
                K=reportprepare(app,K,i)
                
                quadraticsvmImageClicked(app, event);
                
                
                K=reportprepare(app,K,i)
                
                
                Image5_4Clicked(app, event);
                K=reportprepare(app,K,i)
                
                Image5_6Clicked(app, event);
                K=reportprepare(app,K,i)
                
                Image5_7Clicked(app, event);
                
                K=reportprepare(app,K,i)
                
                
                
                d.Value = .50;
                d.Message = 'Running.. SVM part has been finished already ';
                
                MediumTreeClicked(app, event);
                K=reportprepare(app,K,i)
                
                
                CoarseTreeImageClicked(app, event);
                K=reportprepare(app,K,i)
                
                
                CoarseTree_2ImageClicked(app, event);
                K=reportprepare(app,K,i)
                
                
                BoostedTreesImageClicked(app, event);
                
                K=reportprepare(app,K,i)
                
                
                d.Value = .75;
                d.Message = 'Running.. Tree part has been finished already ';
                
                BaggedTreeImageClicked(app,event);
                K=reportprepare(app,K,i)
                
                DiscriminantImageClicked(app,event);
                K=reportprepare(app,K,i)
                
                RUSBImageClicked(app,event);
                K=reportprepare(app,K,i)
                
            end
            
            
            try
                out=cell(size(app.out,1),size(app.outAll,2));
                out(:,1:size(app.out,2))=app.out
                app.outAll=cat(1,app.outAll,out)
            catch
                out=cell(size(app.outAll,1),size(app.out,2));
                out(:,1:size(app.outAll,2))=app.outAll
                app.outAll=cat(1,out,app.out)
                
            end
            groupInd={app.outAll{:,1}}
            responses= groupInd(~cellfun('isempty',groupInd));
            responses=unique(responses,'stable');
            [~, groupInd]=ismember(app.ResponseDropDown.Items{app.trainerResp(1,2)},responses)
            
            groups=app.UITable5.Data(:  ,app.trainerResp(1,2))
            groups=table2array(groups)
            groups=groups(~isnan(groups))
            
            [groups,groupSz]=groupcounts(groups)
            
            try
                app.iterations{groupInd}{end+1}=app.RunsSpinner.Value;
                
                app.groups{groupInd}{end+1}=groups;
                app.groupSz{groupInd}{end+1}=groupSz;
            catch
                app.iterations{groupInd}=[];
                app.iterations{groupInd}{end+1}=app.RunsSpinner.Value;
                app.groups{groupInd}=[];
                app.groupSz{groupInd}=[];
                app.groups{groupInd}{end+1}=groups;
                app.groupSz{groupInd}{end+1}=groupSz
            end
            disp(app.outAll)
            d.Value = 1;
            d.Message = 'Guess we are all ok. Finished';
            pause(0.5);
            close(d);
            
            app.auto=0;
        end

        % Button pushed function: TrainedModelsButton
        function TrainedModelsButtonPushed(app, event)
            app.MainMenuPanel_2.Visible="off";
            app.ModelParametersPanel.Visible="on";
            app.ListBox_10.Items=fieldnames(app.models);
        end

        % Image clicked function: Image22
        function Image22Clicked(app, event)
            app.MainMenuPanel_2.Visible="on";
            app.ModelParametersPanel.Visible="off";
        end

        % Image clicked function: Image23
        function Image23Clicked(app, event)
            app.ClassifierMainPanel.Visible="on";
            app.ExcelEntry.Visible="off";
        end

        % Button pushed function: LoadButton_6
        function LoadButton_6Pushed(app, event)
            removeStyle(app.UITable4);
            
            [a,b]=uigetfile({'*.xlsx;*.xls;*.csv','Excel files (*.xlsx,*.csv)'});
            
            if a==0
                return  ;
            end
            dd = uiprogressdlg(app.GliomaIDHMutationDiagnosisToolUIFigure,'Title','Please Wait',...
                'Message','Loading...');
            dd.Value=0.5;
            
            a=readtable([b filesep   a],'ReadVariableNames',true);
            app.UITable4.Data=a;
            set(app.UITable4, 'ColumnName',a.Properties.VariableNames);
            app.ListBox_5.Items=app.UITable4.Data.Properties.VariableNames;
            app.DropDown.Items=app.UITable4.Data.Properties.VariableNames;
            app.indices;
            dd.Value=0.75;
            app.UITable4.BackgroundColor = [1 1 .9; .9 .95 1];
            app.UITable4.ColumnSortable = true;
            dd.Value=1;
            %msgbox("Excel File Loaded",'Load Complete','none','replace');
            app.UITable4.Visible="on";
            close(dd);
        end

        % Button pushed function: ExcelPlots
        function ExcelPlotsButtonPushed(app, event)
            dd = uiprogressdlg(app.GliomaIDHMutationDiagnosisToolUIFigure,'Title','Please Wait',...
                'Message','Loading...');
            dd.Value=0.5;
            removeStyle(app.UITableExcelEntry);
            
            if app.plottype~=1
                
                [a,b]=uigetfile({'*.xlsx;*.xls;*.csv','Excel files (*.xlsx,*.csv)'});
                
                if a==0
                    return  ;
                end
                
                a=readtable([b filesep   a],'ReadVariableNames',true);
            else
                
                a=app.UITableExcelEntry.Data;
                
                
            end
            try
                app.UITable4.Data=a;
                set(app.UITable4, 'ColumnName',a.Properties.VariableNames);
                app.indices;
                dd.Value=0.75;
                app.UITable4.BackgroundColor = [1 1 .9; .9 .95 1];
                app.UITable4.ColumnSortable = true;
                app.ListBox_5.Items=app.UITable4.Data.Properties.VariableNames;
                app.DropDown.Items=app.UITable4.Data.Properties.VariableNames;
            catch
            end
            dd.Value=1;
            %msgbox("Excel File Loaded",'Load Complete','none','replace');
            app.UITable4.Visible="on";
            close(dd);
            
            app.PlotsMenuPanel.Visible="off";
            app.ExcelPlotPanel.Visible="on";
            
        end

        % Image clicked function: Image24
        function Image24Clicked(app, event)
            app.PlotsMenuPanel.Visible="on";
            app.ExcelPlotPanel.Visible="off";
        end

        % Button pushed function: Plot
        function PlotButtonPushed(app, event)
            answer=get(app.PlotsButtonGroup,'SelectedObject');
            app.excelpanel.AutoResizeChildren="off";
            app.excelpanel.Visible="on";
            ax1= subplot(1,1,1,'Parent',app.excelpanel,'Color',app.excelpanel.BackgroundColor);
            
            dd = uiprogressdlg(app.GliomaIDHMutationDiagnosisToolUIFigure,'Title','Please Wait',...
                'Message','Loading...');
            dd.Value=0.5;
            classes=unique(table2array(app.UITable4.Data(:,app.excelResp(1,2))));
            
            try
                classes=classes(~(isnan(classes)));
            catch
                classes=string(classes(~(classes=="")));
            end
            rsVar=app.UITable4.Data.Properties.VariableNames{app.excelResp(1,2)};
            switch answer.Text
                case 'Bar Plot'
                    delete(get(app.excelpanel,'Children'));
                    app.ax{1}= subplot(1,1,1,'Parent',app.excelpanel,'Color',app.excelpanel.BackgroundColor);
                    data=app.UITable4.Data(:,[app.excelPredictors app.excelResp(1,2)]);
                    app.ax{1}.ButtonDownFcn=@app.axClick;
                    barplotM(app.ax{1},data,size(data,2));
                    app.ax{1}.Title.String='Bar Plot of Metabolites" Means';
                    app.ax{1}.YLabel.String='Groups';
                    app.ax{1}.XLabel.String='Metabolites';
                    
                case 'PCA Plot'
                    delete(get(app.excelpanel,'Children'));
                    app.ax{1}= subplot(1,2,1,'Parent',app.excelpanel,'Color',app.excelpanel.BackgroundColor);
                    data=app.UITable4.Data(:,[app.excelPredictors app.excelResp(1,2)])
                    app.ax{1}.ButtonDownFcn=@app.axClick;
                    pcaPlot(app.ax{1},data,size(data,2),app.PCDimensionSpinner.Value,0);
                    
                    app.ax{1}.Title.String='PCA Plot With Feature Vectors';
                    
                    
                    app.ax{2}= subplot(1,2,2,'Parent',app.excelpanel,'Color',app.excelpanel.BackgroundColor);
                    pcaPlot(app.ax{2},data,size(data,2),app.PCDimensionSpinner.Value,1);
                    app.ax{2}.ButtonDownFcn=@app.axClick;
                    app.ax{2}.Title.String='PCA Plot of Features';
                    
                    
                case 'Line Plot'
                    delete(get(app.excelpanel,'Children'));
                    ax1= subplot(1,1,1,'Parent',app.excelpanel,'Color',app.excelpanel.BackgroundColor);
                    data=app.UITable4.Data(:,[app.excelPredictors app.excelResp(1,2)]);
                    
                    variablePlot(ax1,data,size(data,2),app.ScatterCheckBox.Value,app.Feature1DropDown.Value,...
                        app.ConfidenceIntervalCheckBox.Value,app.CI.Value);
                    ax1.ButtonDownFcn=@app.axClick;
                    if ~app.ScatterCheckBox.Value
                        ax1.Title.String='Line Plot of Means of Features';
                    else
                        
                        ax1.Title.String=app.Feature1DropDown.Value
                    end
                    ax1.YLabel.String='Value';
                    ax1.XLabel.String='Features';
                case 'Variable Plot'
                    delete(get(app.excelpanel,'Children'));
                    ax1= subplot(1,1,1,'Parent',app.excelpanel,'Color',app.excelpanel.BackgroundColor);
                    
                    for i=classes'
                        
                        
                        values=(app.UITable4.Data(app.UITable4.Data.(rsVar)==i,:));
                        
                        
                        scatter(ax1,values.(app.Feature1DropDown.Value),values.(app.Feature2DropDown.Value),'Filled','LineWidth',3);
                        hold (ax1,'on');
                        ax1.Title.String=[' Variable Distribution Plot of ' rsVar];
                        ax1.Title.Color=[0,0,0];
                        
                    end
                    hold(ax1,"off")
                    legend(ax1,string(num2cell((classes'))),'Color',...
                        app.excelpanel.BackgroundColor,'TextColor',[0 0 0]);
                    ax1.ButtonDownFcn=@app.axClick;
                    
                    ax1.XLabel.String=app.Feature1DropDown.Value;
                    ax1.XLabel.ButtonDownFcn=@textHandler;
                    ax1.YLabel.String=app.Feature2DropDown.Value;
                    ax1.YLabel.ButtonDownFcn=@textHandler;
                    
                case 'Spider Plot'
                    ii=1
                    size1=length(classes);
                    size1=sqrt(size1);
                    maxx=0;
                    obj=get(app.excelpanel,'Children');
                    delete(obj);
                    for i=classes'
                        if app.MergeCheckBox_2.Value
                            
                            
                            ax1=subplot(1,1,1,'Parent',app.excelpanel,'Color',app.excelpanel.BackgroundColor);
                            ax1.Title.String=['All Groups'];
                            
                        else
                            
                            app.ax{ii}= subplot(round(size1),(ceil(size1)),ii,'Parent',app.excelpanel,'Color',app.excelpanel.BackgroundColor);
                            ax1=app.ax{ii};
                            ax1.Title.String=[rsVar '=' num2str(i)];
                            
                        end
                        values=(app.UITable4.Data(app.UITable4.Data.(rsVar)==i,:));
                        app.position{ii}=ax1.Position;
                        
                        color=rand(1,3);
                        values2=table2array(values(:,app.excelPredictors));
                        maxx=radarplotOUT(ax1,{mean((values2),1)},...
                            {values.Properties.VariableNames{app.excelPredictors}},'WebColor',[0,0,0],'LineColor',color,...
                            'FillColor',color,'isFirst',(app.MergeCheckBox_2.Value-(ii==length(classes)))==1,'max',maxx);
                        ax1.ButtonDownFcn=@app.axClick;
                        
                        
                        
                        set(ax1,'XColor',[1,1,1]);
                        set(ax1,'XColorMode','manual');
                        set(ax1,'YColor',[1,1,1]);
                        set(ax1,'Color',app.excelpanel.BackgroundColor);
                        ii=ii+1;
                        hold (ax1,'on');
                        set(ax1,'xcolor',app.excelpanel.BackgroundColor);
                        set(ax1,'ycolor',app.excelpanel.BackgroundColor);
                        xlim(ax1,[-1.2*maxx,1.2*maxx]);
                        ylim(ax1,[-1.2*maxx,1.2*maxx]);
                    end
                    delete(findobj(ax1,'type','legend'));
                    
                case 'Box Plot'
                    yl=0;
                    xl=0;
                    ii=1;
                    size1=length(classes);
                    size1=sqrt(size1);
                    for i=classes'
                        app.ax{ii}= subplot(round(size1),(ceil(size1)),ii,'Parent',app.excelpanel,'Color',app.excelpanel.BackgroundColor);
                        ax1=app.ax{ii};
                        values=(app.UITable4.Data(app.UITable4.Data.(rsVar)==i,:));
                        if app.CompactCheckBox.Value
                            try
                                boxplot(ax1,table2array(values(:,app.excelPredictors)),'PlotStyle','compact','Notch',...
                                    'on','Labels',{values.Properties.VariableNames{app.excelPredictors}},'Colors',[1,1,1]);
                            catch
                                boxplot(ax1,[table2array(values(:,app.excelPredictors)) ; table2array(values(:,app.excelPredictors))],'PlotStyle','compact','Notch',...
                                    'on','Labels',{values.Properties.VariableNames{app.excelPredictors}},'Colors',[1,1,1]);
                                
                            end
                        else
                            values=(app.UITable4.Data(app.UITable4.Data.(rsVar)==i,:));
                            
                            try
                                boxplot(ax1,table2array(values(:,app.excelPredictors)),'Labels',...
                                    {values.Properties.VariableNames{app.excelPredictors}}) ;
                            catch
                                boxplot(ax1,[table2array(values(:,app.excelPredictors)); table2array(values(:,app.excelPredictors))],'Labels',...
                                    {values.Properties.VariableNames{app.excelPredictors}}) ;
                            end
                            
                            set(ax1,'XTickLabelRotation',90);
                            lines=findobj(ax1, 'type', 'line','Tag','Upper Whisker');
                            set(lines,'Color',[0,0,0]);
                            lines=findobj(ax1, 'type', 'line','Tag','Lower Whisker');
                            set(lines,'Color',[0,0,0]);
                            
                            lines=findobj(ax1, 'type', 'line','Tag','Upper Adjacent Value');
                            set(lines,'Color',[0,0,0]);
                            
                            lines=findobj(ax1, 'type', 'line','Tag','Lower Adjacent Value');
                            set(lines,'Color',[0,0,0]);
                            set(lines,'Color',[0,0,0]);
                            
                            ax1.ButtonDownFcn=@app.axClick;
                            title(ax1,['\color{white}' 'Group ' num2str(i)]);
                        end
                        set(ax1,'XColor',[0,0,0]);
                        set(ax1,'XColorMode','manual');
                        set(ax1,'YColor',[0,0,0]);
                        set(ax1,'Color',app.excelpanel.BackgroundColor);
                        mxlim=get(ax1,'xlim');
                        mylim=get(ax1,'ylim');
                        if mxlim>xl
                            xl=mxlim;
                        end
                        if mylim>yl
                            yl=mylim;
                        end
                        ii=ii+1;
                        ax1.Title.String='Box Plot of Features';
                        ax1.XLabel.String='Features';
                    end
                    
                    try
                        axs=get(app.excelpanel,'Children');
                        for ia=axs
                            axs.xlim=   xl;
                            axs.ylim=yl;
                            
                        end
                    catch
                    end
                    
            end
            dd.Value=0.7;
            close(dd);
            scripttester2(app);
        end

        % Button pushed function: AssignButton
        function AssignButtonPushed(app, event)
            
            removeStyle(app.UITable4);
            app.excelPredictors=find(ismember(app.ListBox_5.Items, app.ListBox_5.Value)==1)
            s = uistyle("BackgroundColor",'green','FontColor','black','FontWeight','Bold');
            addStyle(app.UITable4,s,'column',app.excelPredictors);
            [~,indices(1,2)]=ismember(app.DropDown.Value,app.DropDown.Items)
            app.excelResp=indices;
            %removeStyle(app.UITable2)
            s = uistyle("BackgroundColor",'blue','FontColor','white','FontWeight','Bold');
            addStyle(app.UITable4,s,'column',indices(1,2));
            str=strjoin(app.ListBox_5.Value,', ');
            
            app.greenLabel.Text=['*Normal features are selected as ' str];
            app.blueLabel.Text=['*Grouping feature is selected as ' app.DropDown.Value];
            
        end

        % Callback function
        function PlotsTabSizeChanged(app, event)
            
        end

        % Selection change function: TabGroup3
        function TabGroup3SelectionChanged(app, event)
            selectedTab = app.TabGroup3.SelectedTab;
            if isempty(app.excelPredictors) | isempty(app.excelResp)
                
                msgbox('Please Select Features','ERROR',"non-modal");
                
                
            else
                app.Feature1DropDown.Items={app.ListBox_5.Items{app.excelPredictors}};
                app.Feature2DropDown.Items={app.ListBox_5.Items{app.excelPredictors}};
                
            end
        end

        % Button pushed function: RunADASYNButton
        function RunADASYNButtonPushed(app, event)
            responses=app.UITable2.Data(:,app.trainerResp(1,2));
            
            if sum(~isnan(table2array(unique(responses))))>2
                answer=uiconfirm (app.GliomaIDHMutationDiagnosisToolUIFigure,...
                    'Your Data ismulti-class. Would you like to continue ?','Warning','Options',...
                    {'Continue','Abort'},'DefaultOption',1,'CancelOption',2,'Icon','Warning')
            else
                answer='Continue'
            end
            
            responses=app.UITable2.Data(:,app.trainerResp(1,2));
            responsesUn=unique(table2array(responses));
            maxx=0;
            for i=responsesUn(~isnan(responsesUn))'
                
                if sum(table2array(responses)==i)>maxx
                    maxx=sum(table2array(responses)==i);
                    id=i;
                end
                
            end
            
            switch answer
                case 'Continue'
                    k=1;
                    
                    valuesA=app.UITable2.Data(:,app.trainerPredictors);
                    responseA=app.UITable2.Data(:,app.trainerResp(1,2));
                    inp2=zeros(1,size(valuesA,2))
                    lbl2=zeros(1,size(responseA,2))
                    
                    for i=responsesUn(~isnan(responsesUn))'
                        
                        
                        response=table2array(responseA)
                        rows=(response==id)+(response==i)
                        %rows=isnan(table2array(response));
                        values=valuesA;
                        values=values(find(rows),:);
                        response=response(find(rows),:);
                        
                        responseBuff=response;
                        responseBuff(responseBuff==i)=0;
                        responseBuff(responseBuff==id)=1;
                        
                        [inp,lbl]=ADASYN(table2array(values),(responseBuff));
                        %size([values response ; inp lbl])
                        lbl(lbl==0)=i;
                        lbl(lbl==1)=id;
                        if size(lbl)==0
                            
                            str=['Data is well balanced! No synthetic data is generated for class= ' num2str(i)];
                            
                        else
                            str=['Data is not-well balanced. For class= ' num2str(i) ',   ' num2str(length(lbl))  ' data points are generated'];
                        end
                        
                        synthetic{k}=length(lbl)
                        inp2=[inp2 ; inp];
                        lbl2=[lbl2 ; lbl];
                        
                        selection = uiconfirm(app.GliomaIDHMutationDiagnosisToolUIFigure,str,'ADASYN',...
                            'Icon','success');
                        
                        
                        %             cz=zeros(size([table2array(values) (response); inp lbl],1),size(app.UITable2.Data,2)) ;
                        %
                        %             cz(:,[app.trainerPredictors app.trainerResp(1,2)])=[table2array(values) (response)...
                        %                 ; inp lbl];
                        
                        
                        
                    end
                    
                    zer=zeros(size(valuesA,1)+size(inp2,1),size(app.UITable2.Data,2))
                    
                    zer(:,[app.trainerPredictors app.trainerResp(1,2)])=[table2array(valuesA) table2array(responseA) ; inp2 lbl2]
                    
                    
                    app.UITable5.Data=array2table(zer,'VariableNames'...
                        ,app.UITable2.Data.Properties.VariableNames);
                    set(app.UITable5, 'ColumnName',app.UITable2.Data.Properties.VariableNames);
                case 'Abort'
            end
            
            
            
        end

        % Button pushed function: RankFeaturesButton
        function RankFeaturesButtonPushed(app, event)
            
            
            
            fig = app.GliomaIDHMutationDiagnosisToolUIFigure;
            msg = 'Choose a Feature Selection Method';
            title = 'Feature Selector';
            selection = uiconfirm(fig,msg,title,...
                'Options',{'Lasso','Neighborhood Component Analysis',...
                'Stepwise Regression','Rank Key Features'}...
                );
            
            switch selection
                case 'Rank Key Features'
                    d = uiprogressdlg(fig,'Message','This process will take few minutes',...
                        'Title','Feature Selection');
                    d.Value=0.5
                    fig = app.GliomaIDHMutationDiagnosisToolUIFigure;
                    msg = 'Choose the criterion';
                    title = 'Feature Selector';
                    selection = uiconfirm(fig,msg,title,...
                        'Options',{'ttest','entropy',...
                        'bhattacharyya','wilcoxon'}...
                        )
                    
                    try
                        [features,Z]= rankfeatures(table2array(app.UITable5.Data(:,app.trainerPredictors))',...
                            table2array(app.UITable5.Data(:,app.trainerResp(1,2))),'Criterion',selection);
                    catch
                        uiconfirm(app.GliomaIDHMutationDiagnosisToolUIFigure,'Your Data is not binary-These feature selections work only on binary sets.' ...
                            ,'Error','Icon','Error','Options',{'Ok'})
                        return;
                    end
                    delete(d)
                case 'Sequential FS'
                    
                case 'Lasso'
                    d = uiprogressdlg(fig,'Message','This process will take few minutes',...
                        'Title','Feature Selection');
                    d.Value=0.5
                    [features,c,s]=lassoFeature(app.UITable5.Data,app.trainerPredictors...
                        , app.trainerResp(1,2))
                    delete(d)
                case 'Neighborhood Component Analysis'
                    d = uiprogressdlg(fig,'Message','This process will take few minutes',...
                        'Title','Feature Selection');
                    d.Value=0.5
                    features=cnca(app.UITable2.Data,app.trainerPredictors,app.trainerResp(1,2),0);
                    delete(d)
                    
                    
                case 'Stepwise Regression'
                    d = uiprogressdlg(fig,'Message','This process will take few minutes',...
                        'Title','Feature Selection');
                    d.Value=0.5
                    features=stepwiseFeature(app.UITable5.Data,app.trainerPredictors,app.trainerResp(1,2),0);
                    
                    delete(d);
            end
            app.featureselection=selection;
            vars={app.UITable2.Data.Properties.VariableNames{app.trainerPredictors}}
            
            app.ListBox_6.Items={vars{features}};
            app.ListBox_6.Visible="on";
            app.FeaturesRankDescendingOrderLabel.Visible="on";
            app.SelectasPredictorsButton.Visible="on";
            app.SelectedFeaturesLabel.Visible="on";
        end

        % Button pushed function: SelectasPredictorsButton
        function SelectasPredictorsButtonPushed(app, event)
            
            
            inds2=find(ismember(app.PREDICTORSListBox.Items, app.ListBox_6.Value)==1)
            app.trainerPredictors=inds2;
            
            str=strjoin(app.ListBox_6.Value,sprintf('\n ,'))
            app.SelectedFeaturesLabel.Text=str;
            app.confirmedSelection=app.featureselection;
            app.Features=str;
        end

        % Button pushed function: SequentialFeatureSelectionButton
        function SequentialFeatureSelectionButtonPushed(app, event)
            
            
            
            
            fig = app.GliomaIDHMutationDiagnosisToolUIFigure;
            d = uiprogressdlg(fig,'Message','This process will take time',...
                'Title','Feature Selection');
            d.Value=0.5       ;
            try
                [features,hist]=sequentialFeature61(app.UITable5.Data,...
                    app.trainerPredictors,app.trainerResp(1,2),1);
            catch
                uiconfirm(app.GliomaIDHMutationDiagnosisToolUIFigure,'Error! Please see the log. (May caused by multi-class',...
                    'Error','Icon','Error','Options',{'Ok'})
                return;
            end
            features=app.trainerPredictors(features);
            d.Value=1;
            delete(d);
            
            vars={app.UITable2.Data.Properties.VariableNames{features}};
            app.featureselection=app.SequentialFeatureSelectionButton.Text
            app.ListBox_6.Items=vars;
            app.ListBox_6.Visible="on";
            app.FeaturesRankDescendingOrderLabel.Visible="on";
            app.SelectasPredictorsButton.Visible="on";
            app.SelectedFeaturesLabel.Visible="on";
        end

        % Button pushed function: PlotsButton_2
        function PlotsButton_2Pushed(app, event)
            app.modelsPlotALLadvanced.Visible="on";
        end

        % Button pushed function: PlotButton_5
        function PlotButton_5Pushed(app, event)
            app.Panel_5.Visible="on";
            modelx=(app.ModelsListBox_4.Value)
            model=app.models.(modelx)
            app.Panel_5.AutoResizeChildren="off";
            objs=get(app.Panel_5,'Children');
            delete(objs);
            app.modelsplotpaneladvanced.Position=[35,88,468,439];
            size(model.plots.Ygt)
            size(model.plots.Ypr)
            
            ax=subplot(2,2,1,'Parent',app.Panel_5);
            confusionMatPlot(ax,model.plots.Ygt,model.plots.Ypr);
            
            ax.ButtonDownFcn=@axClick;
            ax=subplot(2,2,2,'Parent',app.Panel_5);
            confusionMatPlotSideVal1(ax,model.plots.Ygt,model.plots.Ypr);
            ax.ButtonDownFcn=@axClick;
            
            
            ax=subplot(2,2,3,'Parent',app.Panel_5);
            confusionMatPlotSideVal2(ax,model.plots.Ygt,model.plots.Ypr);
            ax.ButtonDownFcn=@axClick;
            
            
            set (app.modelsplotpaneladvanced,'Position',[35,88,468,439]);
            
            modelPlotter(app,model,app.Panel_5,'all','black');
            
        end

        % Button pushed function: RefreshButton_3
        function RefreshButton_3Pushed(app, event)
            app.ModelsListBox_4.Items=fieldnames(app.models);
        end

        % Image clicked function: Image25
        function Image25Clicked(app, event)
            app.MainMenuPanel_2.Visible="on";
            app.modelsPlotALLadvanced.Visible="off";
        end

        % Button pushed function: advancedPlot_2
        function advancedPlot_2ButtonPushed(app, event)
            deleter('modelsLog.txt',app.ListBox_10.Value);
            app.models=rmfield(app.models,app.ListBox_10.Value);
        end

        % Value changed function: PREDICTORSListBox
        function PREDICTORSListBoxValueChanged(app, event)
            value = app.PREDICTORSListBox.Value;
            
        end

        % Value changed function: ResponseDropDown
        function ResponseDropDownValueChanged(app, event)
            value = app.ResponseDropDown.Value;
            
        end

        % Close request function: 
        % GliomaIDHMutationDiagnosisToolUIFigure
        function GliomaIDHMutationDiagnosisToolUIFigureCloseRequest(app, event)
            delete(app)
            close all;
        end

        % Window button motion function: 
        % GliomaIDHMutationDiagnosisToolUIFigure
        function GliomaIDHMutationDiagnosisToolUIFigureWindowButtonMotion(app, event)
            
        end

        % Button pushed function: ManualEntryButton_2
        function ManualEntryButton_2Pushed(app, event)
            app.MainMenuPanel_3.Visible="off";
            app.ManualEntryPan_2.Visible="on";
            f=fieldnames(app.DefMassmodels);
            a=app.Tree3_3.Children;
            a.delete;
            for i=1:length(f)
                
                cat1=uitreenode(app.Tree3_3,'Text',f{i});
                
                
            end
        end

        % Selection changed function: Tree3_3
        function Tree3_3SelectionChanged(app, event)
            selectedNodes = app.Tree3_3.SelectedNodes;
            
            app.ModelMetricsPanel_3.Visible='off';
            the=app.DefMassmodels.(selectedNodes.Text).CRLB;
            
            
            
            reqAdder(app,app.DefMassmodels,{"MetaboliteMenuDropDown_3","ListBox_7"},selectedNodes.Text)
            app.manualControl=zeros(1,size(app.ListBox_7.Items,2));
            app.manualValues=zeros(1,size(app.ListBox_7.Items,2));
            
        end

        % Button pushed function: EnterButton_3
        function EnterButton_3Pushed(app, event)
            index=find(strcmp(app.MetaboliteMenuDropDown_3.Items,(app.MetaboliteMenuDropDown_3.Value)));
            cel2={app.MetaboliteMenuDropDown_3.Value  ' = ' app.EditField_3.Value};
            try
                app.MetaboliteMenuDropDown_3.Value=app.MetaboliteMenuDropDown_3.Items(index+1);
            catch
            end
            app.ListBox_7.Items{index}=[cel2{:}];
            app.ListBox_7.Value=app.ListBox_7.Items{index};
            app.manualControl(index)=1;
            app.manualValues(index)=str2num(app.EditField_3.Value);
            if isempty(find(app.manualControl==0));
                app.Classify_3.Enable="on";
            end
        end

        % Button pushed function: Classify_3
        function Classify_3ButtonPushed(app, event)
            sec=app.Tree3_3.SelectedNodes.Text;
            app.NaNLabel_9.Text=num2str(100*app.DefMassmodels.(sec).plots.Accuracy);
            app.NaNLabel_10.Text=num2str(100*app.DefMassmodels.(sec).plots.specificity{2});
            app.NaNLabel_11.Text=num2str(100*app.DefMassmodels.(sec).plots.sensitivity{2});
            app.manualValues
            res=app.DefMassmodels.(sec).predictFcn(array2table(app.manualValues,'VariableNames'...
                ,app.DefMassmodels.(sec).Classification.PredictorNames));
            app.NaNLabel_12.Text=app.DefMassmodels.(sec).classes{res+1};
            app.ModelMetricsPanel_3.Visible="on";
            
            
        end

        % Image clicked function: Image9_3
        function Image9_3Clicked(app, event)
            app.MainMenuPanel_3.Visible="on";
            app.ManualEntryPan_2.Visible="off";
            app.ModelMetricsPanel_3.Visible="off";
        end

        % Image clicked function: Image15_3
        function Image15_3Clicked(app, event)
            
        end

        % Image clicked function: Image2_2
        function Image2_2Clicked(app, event)
            
            app.MainMenuPanel_3.Visible="on";
            app.ManualEntryPan_2.Visible="off";
            app.ModelMetricsPanel_3.Visible="off";
        end

        % Button pushed function: ExcelEntryButton_2
        function ExcelEntryButton_2Pushed(app, event)
            app.MainMenuPanel_3.Visible="off";
            app.ExcelEntryPanel_2.Visible="on";
            app.ButtonPanel_2.Visible="on";
            app.ButtonPanel_2.Position = [513,131,252,393];
            app.UITableExcelEntry_2.Visible="off";
            app.ModelsListBox_5.Items=fieldnames(app.DefMassmodels);
            app.progressbar_2.Visible="off";
        end

        % Button pushed function: LoadButton_7
        function LoadButton_7Pushed(app, event)
            app.ButtonPanel_2.Position = [11 111 252 393];
            
            app.TrueClass=[];
            removeStyle(app.UITableExcelEntry);
            
            [a,b]=uigetfile({'*.xlsx;*.xls;*.csv','Excel files (*.xlsx,*.csv)'});
            
            if a==0
                return  ;
            end
            fig = app.GliomaIDHMutationDiagnosisToolUIFigure;
            d = uiprogressdlg(fig,'Title','Please Wait',...
                'Message','Loading the table');
            
            app.ButtonPanel_2.Position = [11 111 252 393];
            
            % Perform calculations
            % ...
            d.Value = .33;
            d.Message = 'Loading your data';
            
            a=readtable([b filesep   a],'ReadVariableNames',true);
            app.UITableExcelEntry_2.Data=a;
            set(app.UITableExcelEntry_2', 'ColumnName',a.Properties.VariableNames);
            app.indices;
            
            app.UITableExcelEntry_2.BackgroundColor = [1 1 .9; .9 .95 1];
            app.UITableExcelEntry_2.ColumnSortable = true;
            app.ButtonPanel_2.Position = [11 111 252 393];
            d.Value=0.87
            app.ButtonPanel_2.Position = [11 111 252 393];
            
            %msgbox("Excel File Loaded",'Load Complete','none','replace');
            app.UITableExcelEntry_2.Visible="on";
            delete(d);
        end

        % Button pushed function: ClassifyButton_4
        function ClassifyButton_4Pushed(app, event)
            app.TERTIndices=0;
            app.IDHIndices=0;
            app.DoubleIndices=0;
            app.reqVars;
            app.progressbar_2.Visible="on";
            app.ProcessingLabel_2.Visible="on";
            step=floor(700/size(app.indices,1));
            app.indices(:,1)
            for i=1:size(app.indices,1)
                % yellow
                gCH=[ones(60,step*i) zeros(60,step*(size(app.indices,1)-i))];
                imshow(cat(3,zeros(size(gCH)),gCH,zeros(size(gCH))),'Parent',app.progressbar_2);
                drawnow();
                app.indices(i,1);
                
                sec=app.ModelsListBox_5.Value;
                table=app.UITableExcelEntry_2.Data;
                values=table(app.indices(i,1),:);
                
                
                vals=(values(:,app.reqVars))
                vals=table2array(vals);
                try
                    vals(app.reqVars2>app.DefMassmodels.(sec).CRLB)=0;
                catch
                end
                res=app.DefMassmodels.(sec).predictFcn(array2table(vals,'VariableNames',app.DefMassmodels.(sec).RequiredVariables ));
                disp(['Row ' num2str(app.indices(i,2)) 'classification result is' num2str(res) ])
                
                
                if res==1
                    s = uistyle('BackgroundColor','blue','FontColor','white','FontWeight','Bold');
                    addStyle(app.UITableExcelEntry_2,s,'row',app.indices(i,1));
                    app.TrueClass(end+1)=app.indices(i,1);
                    
                else
                    s = uistyle('BackgroundColor','green','FontColor','black','FontWeight','Bold');
                    addStyle(app.UITableExcelEntry_2,s,'row',app.indices(i,1));
                    
                end
            end
            app.progressbar_2.Visible="off";
            app.ProcessingLabel_2.Visible="off";
        end

        % Button pushed function: ExportClassesButton_3
        function ExportClassesButton_3Pushed(app, event)
            table=app.UITableExcelEntry_2.Data;
            exporter(table,app.indices(:,1),app.TrueClass)
            
        end

        % Value changed function: ModelsListBox_5
        function ModelsListBox_5ValueChanged(app, event)
            value = app.ModelsListBox_5.Value;
            varss=app.DefMassmodels.(value).RequiredVariables;
            app.Class1Label_3.Text=app.DefMassmodels.(value).classes{1};
            app.Class2Label_3.Text=app.DefMassmodels.(value).classes{2};
            
            [~,inds]=ismember(varss,app.UITableExcelEntry_2.Data.Properties.VariableNames);
            
            
            message={'This model has been generated with CRLB threshold please assign standard deviations ','Some Metabolites names are NOT Entered Properly '};
            
            app.reqVars=inds;
            if ~isempty(find(inds==0)) || app.DefMassmodels.(value).CRLB~=-1
                
                answer = questdlg(message((sum(inds==0)>0)+1), ...
                    'Warning Menu', ...
                    'Select Manually','Show the improper metabolites','Select Manually');
                switch answer
                    case 'Select Manually'
                        if ~isempty(find(inds==0))
                            [app.reqVars,f]=assignVals(app,varss,app.UITableExcelEntry_2.Data.Properties.VariableNames);
                            waitfor(f);
                            s= uistyle("BackgroundColor",'green',"FontColor",'black','FontWeight','Bold');
                            addStyle(app.UITableExcelEntry_2,s,'column',app.reqVars);
                        end
                        if app.DefMassmodels.(value).CRLB~=-1
                            [app.reqVars2,f]=assignVals3(app,varss,app.UITableExcelEntry_2.Data.Properties.VariableNames);
                            waitfor(f);
                            app.reqVars
                            app.reqVars2
                            
                            s2 = uistyle("BackgroundColor",'red',"FontColor",'white');
                            s3= uistyle("BackgroundColor",'black',"FontColor",'white');
                            s4= uistyle("BackgroundColor",'yellow',"FontColor",'black');
                            addStyle(app.UITableExcelEntry_2,s4,'column',app.reqVars);
                            addStyle(app.UITableExcelEntry_2,s3,'column',app.reqVars2);
                            
                            arr=table2array(app.UITableExcelEntry_2.Data(:,app.reqVars2))<app.DefMassmodels.(value).CRLB
                            
                            
                            ind2=sum(arr,2)==size(arr,2);
                            [ind3,~]=find(ind2==0)
                            [app.row,~]=find(ind2==1);
                            addStyle(app.UITableExcelEntry_2,s2,'row',ind3);
                            addStyle(app.UITableExcelEntry_2,s4,'column',app.reqVars);
                            addStyle(app.UITableExcelEntry_2,s3,'column',app.reqVars2);
                            
                        end
                        
                        
                        
                        
                    case 'Show the improper metabolites'
                        
                        
                        selection = uiconfirm(app.GliomaIDHMutationDiagnosisToolUIFigure,'Improper Metabolite(s) naming. Follow the protocol.'...
                            , strjoin({varss{find(inds==0)}},' ,'),...
                            'Icon','warning');
                end
                
            end
        end

        % Cell selection callback: UITableExcelEntry_2
        function UITableExcelEntry_2CellSelection(app, event)
            indices = event.Indices;
            app.indices=indices;
        end

        % Button pushed function: PlotsButton_3
        function PlotsButton_3Pushed(app, event)
            app.PlotsMenuPanel.Visible= "on";
            app.MainMenuPanel_3.Visible="off";
            app.PlotsPanel.Visible="on";
            app.ModelMetricsPanel_2.Visible="off";
            app.plottype=1;
            app.MR_Spectroscopy.Visible ='on';
            app.LCMODELPLOTS.Visible='off';
            app.MassSpectroscopy.Visible='off';
            app.AdvancedUser.Visible="off";
            app.About.Visible="off";
            
        end

        % Image clicked function: Image10_2
        function Image10_2Clicked(app, event)
            app.MainMenuPanel_3.Visible="on";
            app.ExcelEntryPanel_2.Visible="off";
            app.ModelMetricsPanel_3.Visible="off";
        end

        % Image clicked function: Image26
        function Image26Clicked(app, event)
            
        end

        % Button pushed function: ReportAll
        function ReportAllPushed(app, event)
            
            
            
            
            
            
            
            selection = uiconfirm(app.GliomaIDHMutationDiagnosisToolUIFigure,'Select the option','Reporter',...
                'Options',{'Report All','Report Last',...
                'Reset'}...
                );
            
            switch selection
                case 'Report All'
                    filter={'*.txt';'*.xlsx'}
                    [file,path]=uiputfile(filter);
                    size(app.outAll,2)
                    table=(cell2table(app.outAll,'VariableNames',...
                        [{'Response','Features','Methods'} app.variablesOut{1:size(app.outAll,2)-3}]));
                    bf=strsplit([path filesep file],'.');
                    writetable(table,[path filesep file]);
                    table=readtable([path filesep file]);
                    selection2 = uiconfirm(app.GliomaIDHMutationDiagnosisToolUIFigure,'Choose the type of report','Reporter',...
                        'Options',{'Detailed','Compact',...
                        }...
                        );
                    switch selection2
                        case 'Detailed'
                            detail=1
                        case 'Compact'
                            detail=0
                    end
                    reporter(app.GliomaIDHMutationDiagnosisToolUIFigure ,table,[bf{1}],app.groups,app.groupSz,app.iterations,detail);
                    
                case 'Report Last'
                    
                    
                    filter={'*.txt';'*.xlsx'}
                    [file,path]=uiputfile(filter);
                    app.variablesOut;
                    size(app.out,2);
                    table=cell2table(app.out,'VariableNames',...
                        [{'Response','Features','Methods'} app.variablesOut{1:size(app.out,2)-3}]);
                    bf=strsplit([path filesep file],'.');
                    writetable(table,[path filesep file]);
                    
                    table=readtable([path filesep file]);
                    reporter(app.GliomaIDHMutationDiagnosisToolUIFigure , table,[bf{1}],app.groups,app.groupSz,app.iterations,0);
                case 'Reset'
                    
                    app.outAll={};
                    app.groupSz={};
                    app.groups={};
                    app.iterations={};
            end
        end

        % Callback function
        function ReportAll_2ButtonPushed(app, event)
            
        end

        % Button pushed function: Selectsubtab
        function SelectsubtabButtonPushed(app, event)
            fig = app.GliomaIDHMutationDiagnosisToolUIFigure;
            msg = 'Choose the Process';
            title = 'Subtab Selector';
            if isempty(app.subindices)
                uiconfirm(app.GliomaIDHMutationDiagnosisToolUIFigure,'Please select the rows','Error' )
                return
            end
            selection = uiconfirm(fig,msg,title,...
                'Options',{'Select Only','Select and Save','Save Balanced by Selected Column'}...
                );
            
            switch selection
                
                case 'Select Only'
                    app.UITable2.Data=app.UITable2.Data(app.subindices(:,1),:);
                    app.UITable5.Data=app.UITable2.Data;
                case 'Select and Save'
                    app.UITable2.Data=app.UITable2.Data(app.subindices(:,1),:);
                    app.UITable5.Data=app.UITable2.Data;
                    
                    filter={'*.txt';'*.xlsx'}
                    [file,path]=uiputfile(filter);
                    table=(cell2table(app.UITable2.Data,'VariableNames',...
                        app.UITable2.Data.Properties.VariableNames));
                    writetable(table,[path filesep file]);
                case 'Save Balanced by Selected Column'
                    try
                        array=table2array(app.UITable2.Data(:,app.subindices(1,2)));
                        
                        uniques=unique(array,'stable');
                        uniques=uniques(~isnan(uniques));
                        array2=array(~isnan(array));
                        for i=1:length(uniques)
                            inds{i}=find(array==uniques(i))'
                            len(i)=size(inds{i},2);
                        end
                        if min(len)*1.5>max(len)
                            
                            indices=[inds{:}]
                            
                        else
                            [~,mx]=max(len)
                            indic=randi(len(mx),[1,floor(min(len)*1.5)]);
                            buff=inds{mx};
                            inds{mx}=buff(indic);
                            
                            
                            
                            indices=[inds{:}]
                            
                            
                            
                        end
                        
                        app.UITable2.Data=app.UITable2.Data(indices,:);
                        app.UITable5.Data=app.UITable2.Data;
                        filter={'*.txt';'*.xlsx'}
                        [file,path]=uiputfile(filter);
                        table=app.UITable2.Data
                        writetable(table,[path filesep file]);
                        
                    catch
                        
                        
                        
                        
                        
                        
                    end
            end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create GliomaIDHMutationDiagnosisToolUIFigure and hide until all components are created
            app.GliomaIDHMutationDiagnosisToolUIFigure = uifigure('Visible', 'off');
            app.GliomaIDHMutationDiagnosisToolUIFigure.Color = [1 1 1];
            app.GliomaIDHMutationDiagnosisToolUIFigure.Position = [15 100 1507 671];
            app.GliomaIDHMutationDiagnosisToolUIFigure.Name = 'Glioma IDH-Mutation Diagnosis Tool';
            app.GliomaIDHMutationDiagnosisToolUIFigure.CloseRequestFcn = createCallbackFcn(app, @GliomaIDHMutationDiagnosisToolUIFigureCloseRequest, true);
            app.GliomaIDHMutationDiagnosisToolUIFigure.WindowButtonMotionFcn = createCallbackFcn(app, @GliomaIDHMutationDiagnosisToolUIFigureWindowButtonMotion, true);
            app.GliomaIDHMutationDiagnosisToolUIFigure.Scrollable = 'on';

            % Create MR_Spectroscopy
            app.MR_Spectroscopy = uitabgroup(app.GliomaIDHMutationDiagnosisToolUIFigure);
            app.MR_Spectroscopy.SelectionChangedFcn = createCallbackFcn(app, @MR_SpectroscopySelectionChanged, true);
            app.MR_Spectroscopy.Position = [172 -6 1338 678];

            % Create ManualEntryTab
            app.ManualEntryTab = uitab(app.MR_Spectroscopy);
            app.ManualEntryTab.AutoResizeChildren = 'off';
            app.ManualEntryTab.SizeChangedFcn = createCallbackFcn(app, @ManualEntryTabSizeChanged, true);
            app.ManualEntryTab.Title = 'Manual Entry';
            app.ManualEntryTab.BackgroundColor = [0.502 0.502 0.502];

            % Create ManualEntryPan
            app.ManualEntryPan = uipanel(app.ManualEntryTab);
            app.ManualEntryPan.AutoResizeChildren = 'off';
            app.ManualEntryPan.BorderType = 'none';
            app.ManualEntryPan.Visible = 'off';
            app.ManualEntryPan.BackgroundColor = [0.502 0.502 0.502];
            app.ManualEntryPan.FontWeight = 'bold';
            app.ManualEntryPan.Position = [417 58 479 493];

            % Create Classify
            app.Classify = uibutton(app.ManualEntryPan, 'push');
            app.Classify.ButtonPushedFcn = createCallbackFcn(app, @ClassifyButtonPushed, true);
            app.Classify.Icon = 'output-onlinepngtools (11).png';
            app.Classify.BackgroundColor = [0.251 0.3216 0.2];
            app.Classify.FontName = 'Arial';
            app.Classify.FontSize = 18;
            app.Classify.FontWeight = 'bold';
            app.Classify.FontColor = [0.902 0.902 0.902];
            app.Classify.Enable = 'off';
            app.Classify.Position = [172 45 178 45];
            app.Classify.Text = '';

            % Create EnterButton
            app.EnterButton = uibutton(app.ManualEntryPan, 'push');
            app.EnterButton.ButtonPushedFcn = createCallbackFcn(app, @EnterButtonPushed, true);
            app.EnterButton.Icon = 'plus.png';
            app.EnterButton.BackgroundColor = [0.502 0.502 0.502];
            app.EnterButton.FontName = 'Arial';
            app.EnterButton.FontSize = 14;
            app.EnterButton.FontWeight = 'bold';
            app.EnterButton.FontColor = [0.902 0.902 0.902];
            app.EnterButton.Position = [349 428 111 50];
            app.EnterButton.Text = 'Enter';

            % Create MetaboliteMenuDropDown
            app.MetaboliteMenuDropDown = uidropdown(app.ManualEntryPan);
            app.MetaboliteMenuDropDown.Items = {'Glyc', 'GSH', 'HG2', 'Ins', 'Lac', 'GPc_Pch', 'tNAA', 'tCR', 'Glx'};
            app.MetaboliteMenuDropDown.FontName = 'Arial';
            app.MetaboliteMenuDropDown.Position = [119 438 153 26];
            app.MetaboliteMenuDropDown.Value = 'Glyc';

            % Create Image2
            app.Image2 = uiimage(app.ManualEntryPan);
            app.Image2.ImageClickedFcn = createCallbackFcn(app, @Image2Clicked, true);
            app.Image2.Position = [58 422 38 61];
            app.Image2.ImageSource = 'multiple-variable-lines-graphic.png';

            % Create EditField
            app.EditField = uieditfield(app.ManualEntryPan, 'text');
            app.EditField.ValueChangedFcn = createCallbackFcn(app, @EditFieldValueChanged, true);
            app.EditField.BackgroundColor = [0.902 0.902 0.902];
            app.EditField.Position = [281 438 51 26];

            % Create ListBox
            app.ListBox = uilistbox(app.ManualEntryPan);
            app.ListBox.Items = {};
            app.ListBox.ValueChangedFcn = createCallbackFcn(app, @ListBoxValueChanged, true);
            app.ListBox.FontName = 'Arial';
            app.ListBox.FontSize = 14;
            app.ListBox.FontWeight = 'bold';
            app.ListBox.BackgroundColor = [0.502 0.502 0.502];
            app.ListBox.Position = [271 100 201 305];
            app.ListBox.Value = {};

            % Create Tree3
            app.Tree3 = uitree(app.ManualEntryPan);
            app.Tree3.SelectionChangedFcn = createCallbackFcn(app, @Tree3SelectionChanged, true);
            app.Tree3.FontName = 'Bodoni MT';
            app.Tree3.FontColor = [1 1 1];
            app.Tree3.BackgroundColor = [0.502 0.502 0.502];
            app.Tree3.Position = [46 99 204 308];

            % Create modelsd
            app.modelsd = uitreenode(app.Tree3);
            app.modelsd.Text = 'models';

            % Create MetaboliteConcentrationEntryLabel
            app.MetaboliteConcentrationEntryLabel = uilabel(app.ManualEntryPan);
            app.MetaboliteConcentrationEntryLabel.FontName = 'Arial';
            app.MetaboliteConcentrationEntryLabel.FontSize = 14;
            app.MetaboliteConcentrationEntryLabel.FontAngle = 'italic';
            app.MetaboliteConcentrationEntryLabel.Position = [60 471 239 31];
            app.MetaboliteConcentrationEntryLabel.Text = 'Metabolite Concentration Entry';

            % Create Image9
            app.Image9 = uiimage(app.ManualEntryPan);
            app.Image9.ImageClickedFcn = createCallbackFcn(app, @Image9Clicked, true);
            app.Image9.Position = [15 15 23 45];
            app.Image9.ImageSource = 'left-arrow.png';

            % Create BacktoMainMenuLabel
            app.BacktoMainMenuLabel = uilabel(app.ManualEntryPan);
            app.BacktoMainMenuLabel.FontName = 'Arial';
            app.BacktoMainMenuLabel.FontColor = [1 1 1];
            app.BacktoMainMenuLabel.Position = [46 15 103 45];
            app.BacktoMainMenuLabel.Text = {'Back to Main Menu'; ''};

            % Create ModelMetricsPanel
            app.ModelMetricsPanel = uipanel(app.ManualEntryTab);
            app.ModelMetricsPanel.AutoResizeChildren = 'off';
            app.ModelMetricsPanel.ForegroundColor = [1 1 1];
            app.ModelMetricsPanel.BorderType = 'none';
            app.ModelMetricsPanel.Title = 'Model Metrics';
            app.ModelMetricsPanel.Visible = 'off';
            app.ModelMetricsPanel.BackgroundColor = [0.502 0.502 0.502];
            app.ModelMetricsPanel.FontName = 'Arial';
            app.ModelMetricsPanel.FontAngle = 'italic';
            app.ModelMetricsPanel.Position = [916 72 333 460];

            % Create ListBox_2
            app.ListBox_2 = uilistbox(app.ModelMetricsPanel);
            app.ListBox_2.Items = {};
            app.ListBox_2.Visible = 'off';
            app.ListBox_2.FontName = 'Arial';
            app.ListBox_2.FontSize = 14;
            app.ListBox_2.FontWeight = 'bold';
            app.ListBox_2.BackgroundColor = [0.502 0.502 0.502];
            app.ListBox_2.Position = [21 100 10 321];
            app.ListBox_2.Value = {};

            % Create Image8
            app.Image8 = uiimage(app.ModelMetricsPanel);
            app.Image8.Position = [31 354 40 38];
            app.Image8.ImageSource = 'output-onlinepngtools (18).png';

            % Create Image8_2
            app.Image8_2 = uiimage(app.ModelMetricsPanel);
            app.Image8_2.Position = [31 274 40 38];
            app.Image8_2.ImageSource = 'precision.png';

            % Create Image8_3
            app.Image8_3 = uiimage(app.ModelMetricsPanel);
            app.Image8_3.Position = [31 194 40 38];
            app.Image8_3.ImageSource = 'call-center.png';

            % Create AccuracyLabel
            app.AccuracyLabel = uilabel(app.ModelMetricsPanel);
            app.AccuracyLabel.FontName = 'Arial';
            app.AccuracyLabel.FontSize = 14;
            app.AccuracyLabel.FontColor = [0.302 0.7451 0.9333];
            app.AccuracyLabel.Position = [94 363 65 22];
            app.AccuracyLabel.Text = 'Accuracy';

            % Create SpecificityLabel
            app.SpecificityLabel = uilabel(app.ModelMetricsPanel);
            app.SpecificityLabel.FontName = 'Arial';
            app.SpecificityLabel.FontSize = 14;
            app.SpecificityLabel.Position = [94 285 176 22];
            app.SpecificityLabel.Text = 'Specificity';

            % Create SensitivityLabel
            app.SensitivityLabel = uilabel(app.ModelMetricsPanel);
            app.SensitivityLabel.FontName = 'Arial';
            app.SensitivityLabel.FontSize = 14;
            app.SensitivityLabel.Position = [94 196 244 36];
            app.SensitivityLabel.Text = 'Sensitivity';

            % Create NaNLabel
            app.NaNLabel = uilabel(app.ModelMetricsPanel);
            app.NaNLabel.FontName = 'Arial';
            app.NaNLabel.FontSize = 16;
            app.NaNLabel.FontColor = [0.302 0.7451 0.9333];
            app.NaNLabel.Position = [183 343 175 66];
            app.NaNLabel.Text = 'NaN';

            % Create NaNLabel_2
            app.NaNLabel_2 = uilabel(app.ModelMetricsPanel);
            app.NaNLabel_2.FontName = 'Arial';
            app.NaNLabel_2.FontSize = 16;
            app.NaNLabel_2.Position = [183 283 175 22];
            app.NaNLabel_2.Text = 'NaN';

            % Create NaNLabel_3
            app.NaNLabel_3 = uilabel(app.ModelMetricsPanel);
            app.NaNLabel_3.FontName = 'Arial';
            app.NaNLabel_3.FontSize = 16;
            app.NaNLabel_3.Position = [181 196 197 31];
            app.NaNLabel_3.Text = 'NaN';

            % Create Image15
            app.Image15 = uiimage(app.ModelMetricsPanel);
            app.Image15.Position = [31 110 40 38];
            app.Image15.ImageSource = 'analysis.png';

            % Create ResultLabel
            app.ResultLabel = uilabel(app.ModelMetricsPanel);
            app.ResultLabel.FontName = 'Arial';
            app.ResultLabel.FontSize = 14;
            app.ResultLabel.Position = [94 118 65 22];
            app.ResultLabel.Text = 'Result';

            % Create NaNLabel_4
            app.NaNLabel_4 = uilabel(app.ModelMetricsPanel);
            app.NaNLabel_4.FontName = 'Arial';
            app.NaNLabel_4.FontSize = 16;
            app.NaNLabel_4.Position = [181 116 197 31];
            app.NaNLabel_4.Text = 'NaN';

            % Create MainMenuPanel
            app.MainMenuPanel = uipanel(app.ManualEntryTab);
            app.MainMenuPanel.AutoResizeChildren = 'off';
            app.MainMenuPanel.ForegroundColor = [0.302 0.7451 0.9333];
            app.MainMenuPanel.BorderType = 'none';
            app.MainMenuPanel.TitlePosition = 'centertop';
            app.MainMenuPanel.Title = 'Main Menu';
            app.MainMenuPanel.BackgroundColor = [0.502 0.502 0.502];
            app.MainMenuPanel.FontName = 'Arial';
            app.MainMenuPanel.FontWeight = 'bold';
            app.MainMenuPanel.Position = [522 72 344 460];

            % Create ManualEntryButton
            app.ManualEntryButton = uibutton(app.MainMenuPanel, 'push');
            app.ManualEntryButton.ButtonPushedFcn = createCallbackFcn(app, @ManualEntryButtonPushed, true);
            app.ManualEntryButton.BackgroundColor = [0.502 0.502 0.502];
            app.ManualEntryButton.FontWeight = 'bold';
            app.ManualEntryButton.FontColor = [1 1 1];
            app.ManualEntryButton.Position = [101 324 138 44];
            app.ManualEntryButton.Text = 'Manual Entry';

            % Create ExcelEntryButton
            app.ExcelEntryButton = uibutton(app.MainMenuPanel, 'push');
            app.ExcelEntryButton.ButtonPushedFcn = createCallbackFcn(app, @ExcelEntryButtonPushed, true);
            app.ExcelEntryButton.BackgroundColor = [0.502 0.502 0.502];
            app.ExcelEntryButton.FontWeight = 'bold';
            app.ExcelEntryButton.FontColor = [1 1 1];
            app.ExcelEntryButton.Position = [101 273 138 36];
            app.ExcelEntryButton.Text = 'Excel Entry';

            % Create LCModelEntryButton
            app.LCModelEntryButton = uibutton(app.MainMenuPanel, 'push');
            app.LCModelEntryButton.ButtonPushedFcn = createCallbackFcn(app, @LCModelEntryButtonPushed, true);
            app.LCModelEntryButton.BackgroundColor = [0.502 0.502 0.502];
            app.LCModelEntryButton.FontWeight = 'bold';
            app.LCModelEntryButton.FontColor = [1 1 1];
            app.LCModelEntryButton.Position = [101 211 138 39];
            app.LCModelEntryButton.Text = 'LC Model Entry';

            % Create PlotsButton
            app.PlotsButton = uibutton(app.MainMenuPanel, 'push');
            app.PlotsButton.ButtonPushedFcn = createCallbackFcn(app, @PlotsButtonPushed, true);
            app.PlotsButton.BackgroundColor = [0.4667 0.6745 0.1882];
            app.PlotsButton.FontWeight = 'bold';
            app.PlotsButton.FontColor = [1 1 1];
            app.PlotsButton.Position = [101 63 138 46];
            app.PlotsButton.Text = {'Plots'; ''};

            % Create ExcelEntryPanel
            app.ExcelEntryPanel = uipanel(app.ManualEntryTab);
            app.ExcelEntryPanel.AutoResizeChildren = 'off';
            app.ExcelEntryPanel.ForegroundColor = [0.502 0.502 0.502];
            app.ExcelEntryPanel.BorderType = 'none';
            app.ExcelEntryPanel.Visible = 'off';
            app.ExcelEntryPanel.BackgroundColor = [0.502 0.502 0.502];
            app.ExcelEntryPanel.Position = [10 24 1339 596];

            % Create ButtonPanel
            app.ButtonPanel = uipanel(app.ExcelEntryPanel);
            app.ButtonPanel.AutoResizeChildren = 'off';
            app.ButtonPanel.ForegroundColor = [0 1 0];
            app.ButtonPanel.BorderType = 'none';
            app.ButtonPanel.TitlePosition = 'centertop';
            app.ButtonPanel.Title = 'Excel Entry';
            app.ButtonPanel.Visible = 'off';
            app.ButtonPanel.BackgroundColor = [0.502 0.502 0.502];
            app.ButtonPanel.FontWeight = 'bold';
            app.ButtonPanel.Position = [513 35 252 489];

            % Create progressbar
            app.progressbar = uiaxes(app.ButtonPanel);
            app.progressbar.DataAspectRatio = [1 1 1];
            app.progressbar.XTick = [];
            app.progressbar.YTick = [];
            app.progressbar.Visible = 'off';
            app.progressbar.BackgroundColor = [0.502 0.502 0.502];
            app.progressbar.Position = [68 262 127 35];

            % Create LoadButton
            app.LoadButton = uibutton(app.ButtonPanel, 'push');
            app.LoadButton.ButtonPushedFcn = createCallbackFcn(app, @LoadButtonPushed, true);
            app.LoadButton.BackgroundColor = [0.502 0.502 0.502];
            app.LoadButton.FontName = 'Arial';
            app.LoadButton.FontWeight = 'bold';
            app.LoadButton.FontColor = [1 1 1];
            app.LoadButton.Position = [76 413 100 34];
            app.LoadButton.Text = 'Load';

            % Create ClassifyButton
            app.ClassifyButton = uibutton(app.ButtonPanel, 'push');
            app.ClassifyButton.ButtonPushedFcn = createCallbackFcn(app, @ClassifyButtonPushed2, true);
            app.ClassifyButton.BackgroundColor = [0.502 0.502 0.502];
            app.ClassifyButton.FontName = 'Arial';
            app.ClassifyButton.FontWeight = 'bold';
            app.ClassifyButton.FontColor = [1 1 1];
            app.ClassifyButton.Position = [76 346 100 35];
            app.ClassifyButton.Text = 'Classify';

            % Create ExportClassesButton
            app.ExportClassesButton = uibutton(app.ButtonPanel, 'push');
            app.ExportClassesButton.ButtonPushedFcn = createCallbackFcn(app, @ExportClassesButtonPushed, true);
            app.ExportClassesButton.BackgroundColor = [0.1451 0.5529 0.7294];
            app.ExportClassesButton.FontWeight = 'bold';
            app.ExportClassesButton.FontColor = [1 1 1];
            app.ExportClassesButton.Position = [76 59 102 38];
            app.ExportClassesButton.Text = 'Export Classes';

            % Create Image10
            app.Image10 = uiimage(app.ButtonPanel);
            app.Image10.ImageClickedFcn = createCallbackFcn(app, @Image10Clicked, true);
            app.Image10.Position = [15 9 28 22];
            app.Image10.ImageSource = 'left-arrow.png';

            % Create BacktoMainMenuLabel_2
            app.BacktoMainMenuLabel_2 = uilabel(app.ButtonPanel);
            app.BacktoMainMenuLabel_2.FontName = 'Arial';
            app.BacktoMainMenuLabel_2.FontColor = [1 1 1];
            app.BacktoMainMenuLabel_2.Position = [48 4 103 35];
            app.BacktoMainMenuLabel_2.Text = 'Back to Main Menu';

            % Create ProcessingLabel
            app.ProcessingLabel = uilabel(app.ButtonPanel);
            app.ProcessingLabel.FontSize = 15;
            app.ProcessingLabel.FontWeight = 'bold';
            app.ProcessingLabel.FontColor = [1 1 1];
            app.ProcessingLabel.Visible = 'off';
            app.ProcessingLabel.Position = [58 300 139 27];
            app.ProcessingLabel.Text = 'Processing..';

            % Create ModelsListBox_3Label
            app.ModelsListBox_3Label = uilabel(app.ButtonPanel);
            app.ModelsListBox_3Label.HorizontalAlignment = 'right';
            app.ModelsListBox_3Label.FontWeight = 'bold';
            app.ModelsListBox_3Label.FontColor = [1 1 1];
            app.ModelsListBox_3Label.Position = [1 224 47 22];
            app.ModelsListBox_3Label.Text = 'Models';

            % Create ModelsListBox_3
            app.ModelsListBox_3 = uilistbox(app.ButtonPanel);
            app.ModelsListBox_3.Items = {};
            app.ModelsListBox_3.ValueChangedFcn = createCallbackFcn(app, @ModelsListBox_3ValueChanged, true);
            app.ModelsListBox_3.FontWeight = 'bold';
            app.ModelsListBox_3.FontColor = [1 1 1];
            app.ModelsListBox_3.BackgroundColor = [0.502 0.502 0.502];
            app.ModelsListBox_3.Position = [63 115 190 133];
            app.ModelsListBox_3.Value = {};

            % Create LoadButton_4
            app.LoadButton_4 = uibutton(app.ButtonPanel, 'push');
            app.LoadButton_4.ButtonPushedFcn = createCallbackFcn(app, @LoadButton_4Pushed, true);
            app.LoadButton_4.BackgroundColor = [0.502 0.502 0.502];
            app.LoadButton_4.FontName = 'Arial';
            app.LoadButton_4.FontWeight = 'bold';
            app.LoadButton_4.FontColor = [1 1 1];
            app.LoadButton_4.Visible = 'off';
            app.LoadButton_4.Position = [96 393 52 20];
            app.LoadButton_4.Text = 'Load';

            % Create UITableExcelEntry
            app.UITableExcelEntry = uitable(app.ExcelEntryPanel);
            app.UITableExcelEntry.ColumnName = {''};
            app.UITableExcelEntry.RowName = {};
            app.UITableExcelEntry.CellSelectionCallback = createCallbackFcn(app, @UITableExcelEntryCellSelection, true);
            app.UITableExcelEntry.Visible = 'off';
            app.UITableExcelEntry.FontName = 'Arial';
            app.UITableExcelEntry.Position = [268 88 979 416];

            % Create Class1Label
            app.Class1Label = uilabel(app.ExcelEntryPanel);
            app.Class1Label.FontName = 'Arial';
            app.Class1Label.FontWeight = 'bold';
            app.Class1Label.FontAngle = 'italic';
            app.Class1Label.FontColor = [0 1 0];
            app.Class1Label.Position = [240 43 270 22];
            app.Class1Label.Text = '*Class1';

            % Create Class2Label
            app.Class2Label = uilabel(app.ExcelEntryPanel);
            app.Class2Label.FontName = 'Arial';
            app.Class2Label.FontWeight = 'bold';
            app.Class2Label.FontAngle = 'italic';
            app.Class2Label.FontColor = [0 0 1];
            app.Class2Label.Position = [240 23 271 22];
            app.Class2Label.Text = '*Class2';

            % Create PlotsPanel
            app.PlotsPanel = uipanel(app.ManualEntryTab);
            app.PlotsPanel.AutoResizeChildren = 'off';
            app.PlotsPanel.BorderType = 'none';
            app.PlotsPanel.TitlePosition = 'centertop';
            app.PlotsPanel.Visible = 'off';
            app.PlotsPanel.BackgroundColor = [0.502 0.502 0.502];
            app.PlotsPanel.Position = [10 28 1239 563];

            % Create PlotsMenuPanel
            app.PlotsMenuPanel = uipanel(app.PlotsPanel);
            app.PlotsMenuPanel.AutoResizeChildren = 'off';
            app.PlotsMenuPanel.ForegroundColor = [1 1 1];
            app.PlotsMenuPanel.BorderType = 'none';
            app.PlotsMenuPanel.TitlePosition = 'centertop';
            app.PlotsMenuPanel.Title = 'Plots Menu';
            app.PlotsMenuPanel.BackgroundColor = [0.502 0.502 0.502];
            app.PlotsMenuPanel.FontWeight = 'bold';
            app.PlotsMenuPanel.Position = [501 79 257 452];

            % Create ModelPlots
            app.ModelPlots = uibutton(app.PlotsMenuPanel, 'push');
            app.ModelPlots.ButtonPushedFcn = createCallbackFcn(app, @ModelPlotsButtonPushed, true);
            app.ModelPlots.BackgroundColor = [0.502 0.502 0.502];
            app.ModelPlots.FontWeight = 'bold';
            app.ModelPlots.FontColor = [1 1 1];
            app.ModelPlots.Position = [77 267 100 46];
            app.ModelPlots.Text = 'Model Plots';

            % Create LCMODELPLOTS
            app.LCMODELPLOTS = uibutton(app.PlotsMenuPanel, 'push');
            app.LCMODELPLOTS.ButtonPushedFcn = createCallbackFcn(app, @LCMODELPLOTSButtonPushed, true);
            app.LCMODELPLOTS.BackgroundColor = [0.502 0.502 0.502];
            app.LCMODELPLOTS.FontWeight = 'bold';
            app.LCMODELPLOTS.FontColor = [1 1 1];
            app.LCMODELPLOTS.Position = [76 89 102 46];
            app.LCMODELPLOTS.Text = 'LC Model Plots';

            % Create ExcelPlots
            app.ExcelPlots = uibutton(app.PlotsMenuPanel, 'push');
            app.ExcelPlots.ButtonPushedFcn = createCallbackFcn(app, @ExcelPlotsButtonPushed, true);
            app.ExcelPlots.BackgroundColor = [0.502 0.502 0.502];
            app.ExcelPlots.FontWeight = 'bold';
            app.ExcelPlots.FontColor = [1 1 1];
            app.ExcelPlots.Position = [77 177 100 46];
            app.ExcelPlots.Text = 'Excel Plots';

            % Create Image11
            app.Image11 = uiimage(app.PlotsMenuPanel);
            app.Image11.ImageClickedFcn = createCallbackFcn(app, @Image11Clicked, true);
            app.Image11.Position = [8 400 20 23];
            app.Image11.ImageSource = 'left-arrow.png';

            % Create BacktoMainMenuLabel_3
            app.BacktoMainMenuLabel_3 = uilabel(app.PlotsMenuPanel);
            app.BacktoMainMenuLabel_3.FontColor = [1 1 1];
            app.BacktoMainMenuLabel_3.Position = [37 401 113 22];
            app.BacktoMainMenuLabel_3.Text = 'Back to Main Menu';

            % Create plottingpanels1
            app.plottingpanels1 = uipanel(app.PlotsPanel);
            app.plottingpanels1.AutoResizeChildren = 'off';
            app.plottingpanels1.BorderType = 'none';
            app.plottingpanels1.BackgroundColor = [0.502 0.502 0.502];
            app.plottingpanels1.Position = [15 50 454 500];

            % Create plottingpanels2
            app.plottingpanels2 = uipanel(app.PlotsPanel);
            app.plottingpanels2.AutoResizeChildren = 'off';
            app.plottingpanels2.BorderType = 'none';
            app.plottingpanels2.Visible = 'off';
            app.plottingpanels2.BackgroundColor = [0.502 0.502 0.502];
            app.plottingpanels2.Position = [386 50 826 497];

            % Create ModelPlotsPanel
            app.ModelPlotsPanel = uipanel(app.PlotsPanel);
            app.ModelPlotsPanel.AutoResizeChildren = 'off';
            app.ModelPlotsPanel.ForegroundColor = [1 1 1];
            app.ModelPlotsPanel.BorderType = 'none';
            app.ModelPlotsPanel.TitlePosition = 'centertop';
            app.ModelPlotsPanel.Title = 'Model Plots';
            app.ModelPlotsPanel.Visible = 'off';
            app.ModelPlotsPanel.BackgroundColor = [0.502 0.502 0.502];
            app.ModelPlotsPanel.Position = [503 88 237 439];

            % Create RefreshButton_2
            app.RefreshButton_2 = uibutton(app.ModelPlotsPanel, 'push');
            app.RefreshButton_2.ButtonPushedFcn = createCallbackFcn(app, @RefreshButton_2Pushed, true);
            app.RefreshButton_2.BackgroundColor = [0.4549 0.902 0.4235];
            app.RefreshButton_2.FontWeight = 'bold';
            app.RefreshButton_2.Position = [25 61 87 39];
            app.RefreshButton_2.Text = 'Refresh';

            % Create PlotButton_3
            app.PlotButton_3 = uibutton(app.ModelPlotsPanel, 'push');
            app.PlotButton_3.ButtonPushedFcn = createCallbackFcn(app, @PlotButton_3Pushed, true);
            app.PlotButton_3.BackgroundColor = [0.6 0.8549 0.8784];
            app.PlotButton_3.FontWeight = 'bold';
            app.PlotButton_3.Position = [131 61 91 39];
            app.PlotButton_3.Text = 'Plot';

            % Create ModelsListBoxLabel
            app.ModelsListBoxLabel = uilabel(app.ModelPlotsPanel);
            app.ModelsListBoxLabel.BackgroundColor = [0.502 0.502 0.502];
            app.ModelsListBoxLabel.HorizontalAlignment = 'right';
            app.ModelsListBoxLabel.FontColor = [1 1 1];
            app.ModelsListBoxLabel.Position = [96 377 42 22];
            app.ModelsListBoxLabel.Text = 'Models';

            % Create ModelsListBox
            app.ModelsListBox = uilistbox(app.ModelPlotsPanel);
            app.ModelsListBox.Items = {};
            app.ModelsListBox.FontColor = [1 1 1];
            app.ModelsListBox.BackgroundColor = [0.502 0.502 0.502];
            app.ModelsListBox.Position = [25 169 197 209];
            app.ModelsListBox.Value = {};

            % Create Image12
            app.Image12 = uiimage(app.ModelPlotsPanel);
            app.Image12.ImageClickedFcn = createCallbackFcn(app, @Image12Clicked, true);
            app.Image12.Position = [26 23 27 21];
            app.Image12.ImageSource = 'left-arrow.png';

            % Create Image12_2
            app.Image12_2 = uiimage(app.ModelPlotsPanel);
            app.Image12_2.ImageClickedFcn = createCallbackFcn(app, @Image12_2Clicked, true);
            app.Image12_2.Position = [25 3 28 21];
            app.Image12_2.ImageSource = 'left-arrow.png';

            % Create BacktoMainMenuLabel_4
            app.BacktoMainMenuLabel_4 = uilabel(app.ModelPlotsPanel);
            app.BacktoMainMenuLabel_4.FontColor = [1 1 1];
            app.BacktoMainMenuLabel_4.Position = [63 23 103 22];
            app.BacktoMainMenuLabel_4.Text = 'Back to Main Menu';

            % Create BacktopreviousMenuLabel
            app.BacktopreviousMenuLabel = uilabel(app.ModelPlotsPanel);
            app.BacktopreviousMenuLabel.FontColor = [1 1 1];
            app.BacktopreviousMenuLabel.Position = [63 3 123 22];
            app.BacktopreviousMenuLabel.Text = 'Back to previous Menu';

            % Create LCModelPlotsPanel
            app.LCModelPlotsPanel = uipanel(app.PlotsPanel);
            app.LCModelPlotsPanel.AutoResizeChildren = 'off';
            app.LCModelPlotsPanel.ForegroundColor = [0 1 0];
            app.LCModelPlotsPanel.BorderType = 'none';
            app.LCModelPlotsPanel.TitlePosition = 'centertop';
            app.LCModelPlotsPanel.Title = 'LC Model Plots';
            app.LCModelPlotsPanel.Visible = 'off';
            app.LCModelPlotsPanel.BackgroundColor = [0.502 0.502 0.502];
            app.LCModelPlotsPanel.Position = [485 79 273 453];

            % Create LoadButton_2
            app.LoadButton_2 = uibutton(app.LCModelPlotsPanel, 'push');
            app.LoadButton_2.ButtonPushedFcn = createCallbackFcn(app, @LoadButton_2Pushed, true);
            app.LoadButton_2.BackgroundColor = [0.302 0.7451 0.9333];
            app.LoadButton_2.FontWeight = 'bold';
            app.LoadButton_2.Position = [80 336 100 39];
            app.LoadButton_2.Text = 'Load';

            % Create PlotButton_4
            app.PlotButton_4 = uibutton(app.LCModelPlotsPanel, 'push');
            app.PlotButton_4.ButtonPushedFcn = createCallbackFcn(app, @PlotButton_4Pushed, true);
            app.PlotButton_4.BackgroundColor = [0.502 0.502 0.502];
            app.PlotButton_4.FontWeight = 'bold';
            app.PlotButton_4.FontColor = [1 1 1];
            app.PlotButton_4.Position = [80 250 100 39];
            app.PlotButton_4.Text = 'Plot';

            % Create Image13
            app.Image13 = uiimage(app.LCModelPlotsPanel);
            app.Image13.ImageClickedFcn = createCallbackFcn(app, @Image13Clicked, true);
            app.Image13.Position = [49 70 28 21];
            app.Image13.ImageSource = 'left-arrow.png';

            % Create Image13_2
            app.Image13_2 = uiimage(app.LCModelPlotsPanel);
            app.Image13_2.ImageClickedFcn = createCallbackFcn(app, @Image13_2Clicked, true);
            app.Image13_2.Position = [26 50 71 21];
            app.Image13_2.ImageSource = 'left-arrow.png';

            % Create BacktoMainMenuLabel_5
            app.BacktoMainMenuLabel_5 = uilabel(app.LCModelPlotsPanel);
            app.BacktoMainMenuLabel_5.FontColor = [1 1 1];
            app.BacktoMainMenuLabel_5.Position = [86 70 103 22];
            app.BacktoMainMenuLabel_5.Text = 'Back to Main Menu';

            % Create BacktoPreviousMenuLabel
            app.BacktoPreviousMenuLabel = uilabel(app.LCModelPlotsPanel);
            app.BacktoPreviousMenuLabel.FontColor = [1 1 1];
            app.BacktoPreviousMenuLabel.Position = [86 50 124 22];
            app.BacktoPreviousMenuLabel.Text = 'Back to Previous Menu';

            % Create MetabolitesListBoxLabel
            app.MetabolitesListBoxLabel = uilabel(app.LCModelPlotsPanel);
            app.MetabolitesListBoxLabel.HorizontalAlignment = 'right';
            app.MetabolitesListBoxLabel.FontColor = [1 1 1];
            app.MetabolitesListBoxLabel.Position = [5 209 63 22];
            app.MetabolitesListBoxLabel.Text = 'Metabolites';

            % Create MetabolitesListBox
            app.MetabolitesListBox = uilistbox(app.LCModelPlotsPanel);
            app.MetabolitesListBox.Items = {};
            app.MetabolitesListBox.Multiselect = 'on';
            app.MetabolitesListBox.FontWeight = 'bold';
            app.MetabolitesListBox.FontColor = [1 1 1];
            app.MetabolitesListBox.BackgroundColor = [0.502 0.502 0.502];
            app.MetabolitesListBox.Position = [76 99 107 134];
            app.MetabolitesListBox.Value = {};

            % Create ExcelPlotPanel
            app.ExcelPlotPanel = uipanel(app.PlotsPanel);
            app.ExcelPlotPanel.AutoResizeChildren = 'off';
            app.ExcelPlotPanel.ForegroundColor = [1 1 1];
            app.ExcelPlotPanel.BorderType = 'none';
            app.ExcelPlotPanel.TitlePosition = 'centertop';
            app.ExcelPlotPanel.Title = 'Excel Plot';
            app.ExcelPlotPanel.Visible = 'off';
            app.ExcelPlotPanel.BackgroundColor = [0.502 0.502 0.502];
            app.ExcelPlotPanel.FontWeight = 'bold';
            app.ExcelPlotPanel.Position = [15 19 1225 541];

            % Create TabGroup3
            app.TabGroup3 = uitabgroup(app.ExcelPlotPanel);
            app.TabGroup3.AutoResizeChildren = 'off';
            app.TabGroup3.SelectionChangedFcn = createCallbackFcn(app, @TabGroup3SelectionChanged, true);
            app.TabGroup3.Position = [1 0 1225 516];

            % Create DataTab
            app.DataTab = uitab(app.TabGroup3);
            app.DataTab.AutoResizeChildren = 'off';
            app.DataTab.Title = 'Data';
            app.DataTab.BackgroundColor = [1 1 1];

            % Create LoadButton_6
            app.LoadButton_6 = uibutton(app.DataTab, 'push');
            app.LoadButton_6.ButtonPushedFcn = createCallbackFcn(app, @LoadButton_6Pushed, true);
            app.LoadButton_6.BackgroundColor = [1 1 1];
            app.LoadButton_6.Position = [17 406 154 44];
            app.LoadButton_6.Text = 'Load';

            % Create UITable4
            app.UITable4 = uitable(app.DataTab);
            app.UITable4.ColumnName = {'Column 1'; 'Column 2'; 'Column 3'; 'Column 4'};
            app.UITable4.RowName = {};
            app.UITable4.Position = [204 48 974 434];

            % Create AssignButton
            app.AssignButton = uibutton(app.DataTab, 'push');
            app.AssignButton.ButtonPushedFcn = createCallbackFcn(app, @AssignButtonPushed, true);
            app.AssignButton.BackgroundColor = [1 1 1];
            app.AssignButton.Position = [17 63 162 43];
            app.AssignButton.Text = 'Assign';

            % Create ListBox_5Label
            app.ListBox_5Label = uilabel(app.DataTab);
            app.ListBox_5Label.HorizontalAlignment = 'right';
            app.ListBox_5Label.FontWeight = 'bold';
            app.ListBox_5Label.Position = [-2 368 67 22];
            app.ListBox_5Label.Text = 'Features';

            % Create ListBox_5
            app.ListBox_5 = uilistbox(app.DataTab);
            app.ListBox_5.Multiselect = 'on';
            app.ListBox_5.FontWeight = 'bold';
            app.ListBox_5.Position = [68 190 128 198];
            app.ListBox_5.Value = {'Item 1'};

            % Create GroupingFeatureLabel
            app.GroupingFeatureLabel = uilabel(app.DataTab);
            app.GroupingFeatureLabel.HorizontalAlignment = 'right';
            app.GroupingFeatureLabel.FontWeight = 'bold';
            app.GroupingFeatureLabel.Position = [36 154 118 17];
            app.GroupingFeatureLabel.Text = 'Grouping Feature';

            % Create DropDown
            app.DropDown = uidropdown(app.DataTab);
            app.DropDown.FontWeight = 'bold';
            app.DropDown.BackgroundColor = [1 1 1];
            app.DropDown.Position = [23 127 173 21];

            % Create Image24
            app.Image24 = uiimage(app.DataTab);
            app.Image24.ImageClickedFcn = createCallbackFcn(app, @Image24Clicked, true);
            app.Image24.Position = [52 9 19 16];
            app.Image24.ImageSource = 'left-arrow.png';

            % Create BacktoPlotsMenuLabel
            app.BacktoPlotsMenuLabel = uilabel(app.DataTab);
            app.BacktoPlotsMenuLabel.Position = [75 9 105 17];
            app.BacktoPlotsMenuLabel.Text = 'Back to Plots Menu';

            % Create greenLabel
            app.greenLabel = uilabel(app.DataTab);
            app.greenLabel.FontWeight = 'bold';
            app.greenLabel.FontAngle = 'italic';
            app.greenLabel.FontColor = [0 1 0];
            app.greenLabel.Position = [204 22 892 22];
            app.greenLabel.Text = '*green';

            % Create blueLabel
            app.blueLabel = uilabel(app.DataTab);
            app.blueLabel.FontWeight = 'bold';
            app.blueLabel.FontAngle = 'italic';
            app.blueLabel.FontColor = [0 0 1];
            app.blueLabel.Position = [207 2 889 22];
            app.blueLabel.Text = '*blue';

            % Create PlotsTab
            app.PlotsTab = uitab(app.TabGroup3);
            app.PlotsTab.AutoResizeChildren = 'off';
            app.PlotsTab.Title = 'Plots';
            app.PlotsTab.BackgroundColor = [1 1 1];

            % Create excelpanel
            app.excelpanel = uipanel(app.PlotsTab);
            app.excelpanel.AutoResizeChildren = 'off';
            app.excelpanel.BorderType = 'none';
            app.excelpanel.BackgroundColor = [1 1 1];
            app.excelpanel.Position = [17 2 825 473];

            % Create Plot
            app.Plot = uibutton(app.PlotsTab, 'push');
            app.Plot.ButtonPushedFcn = createCallbackFcn(app, @PlotButtonPushed, true);
            app.Plot.BackgroundColor = [0.4667 0.6745 0.1882];
            app.Plot.FontName = 'Arial Black';
            app.Plot.FontWeight = 'bold';
            app.Plot.FontColor = [1 1 1];
            app.Plot.Position = [946 34 172 39];
            app.Plot.Text = 'Plot';

            % Create PlotsButtonGroup
            app.PlotsButtonGroup = uibuttongroup(app.PlotsTab);
            app.PlotsButtonGroup.AutoResizeChildren = 'off';
            app.PlotsButtonGroup.TitlePosition = 'centertop';
            app.PlotsButtonGroup.Title = 'Plots';
            app.PlotsButtonGroup.BackgroundColor = [1 1 1];
            app.PlotsButtonGroup.Position = [852 89 360 280];

            % Create VariablePlotButton_2
            app.VariablePlotButton_2 = uitogglebutton(app.PlotsButtonGroup);
            app.VariablePlotButton_2.Text = 'Variable Plot';
            app.VariablePlotButton_2.Position = [11 227 100 22];
            app.VariablePlotButton_2.Value = true;

            % Create SpiderPlotButton_2
            app.SpiderPlotButton_2 = uitogglebutton(app.PlotsButtonGroup);
            app.SpiderPlotButton_2.Text = 'Spider Plot';
            app.SpiderPlotButton_2.Position = [11 196 100 22];

            % Create PCAPlotButton
            app.PCAPlotButton = uitogglebutton(app.PlotsButtonGroup);
            app.PCAPlotButton.Text = 'PCA Plot';
            app.PCAPlotButton.Position = [11 165 100 22];

            % Create BoxPlotButton_2
            app.BoxPlotButton_2 = uitogglebutton(app.PlotsButtonGroup);
            app.BoxPlotButton_2.Text = 'Box Plot';
            app.BoxPlotButton_2.Position = [11 135 100 22];

            % Create BarPlotButton
            app.BarPlotButton = uitogglebutton(app.PlotsButtonGroup);
            app.BarPlotButton.Text = 'Bar Plot';
            app.BarPlotButton.Position = [11 105 100 22];

            % Create LinePlotButton
            app.LinePlotButton = uitogglebutton(app.PlotsButtonGroup);
            app.LinePlotButton.Text = 'Line Plot';
            app.LinePlotButton.Position = [11 75 100 22];

            % Create ConfidenceIntervalCheckBox
            app.ConfidenceIntervalCheckBox = uicheckbox(app.PlotsButtonGroup);
            app.ConfidenceIntervalCheckBox.Text = 'Confidence Interval';
            app.ConfidenceIntervalCheckBox.Position = [160 75 121 22];
            app.ConfidenceIntervalCheckBox.Value = true;

            % Create ScatterCheckBox
            app.ScatterCheckBox = uicheckbox(app.PlotsButtonGroup);
            app.ScatterCheckBox.Text = 'Scatter';
            app.ScatterCheckBox.Position = [291 73 59 22];

            % Create CI
            app.CI = uieditfield(app.PlotsButtonGroup, 'numeric');
            app.CI.Limits = [0 1];
            app.CI.Position = [114 74 33 23];
            app.CI.Value = 0.95;

            % Create MergeCheckBox_2
            app.MergeCheckBox_2 = uicheckbox(app.PlotsButtonGroup);
            app.MergeCheckBox_2.Text = 'Merge';
            app.MergeCheckBox_2.Position = [125 195 54 22];

            % Create CompactCheckBox
            app.CompactCheckBox = uicheckbox(app.PlotsButtonGroup);
            app.CompactCheckBox.Text = 'Compact';
            app.CompactCheckBox.Position = [125 134 70 23];

            % Create PCDimensionSpinnerLabel
            app.PCDimensionSpinnerLabel = uilabel(app.PlotsButtonGroup);
            app.PCDimensionSpinnerLabel.HorizontalAlignment = 'right';
            app.PCDimensionSpinnerLabel.Position = [178 164 88 22];
            app.PCDimensionSpinnerLabel.Text = 'PC Dimension';

            % Create PCDimensionSpinner
            app.PCDimensionSpinner = uispinner(app.PlotsButtonGroup);
            app.PCDimensionSpinner.Limits = [2 3];
            app.PCDimensionSpinner.Position = [125 164 54 22];
            app.PCDimensionSpinner.Value = 2;

            % Create Feature1DropDownLabel
            app.Feature1DropDownLabel = uilabel(app.PlotsTab);
            app.Feature1DropDownLabel.BackgroundColor = [1 1 1];
            app.Feature1DropDownLabel.HorizontalAlignment = 'right';
            app.Feature1DropDownLabel.Position = [868 422 55 22];
            app.Feature1DropDownLabel.Text = 'Feature 1';

            % Create Feature1DropDown
            app.Feature1DropDown = uidropdown(app.PlotsTab);
            app.Feature1DropDown.BackgroundColor = [1 1 1];
            app.Feature1DropDown.Position = [938 422 264 22];

            % Create Feature2DropDownLabel
            app.Feature2DropDownLabel = uilabel(app.PlotsTab);
            app.Feature2DropDownLabel.BackgroundColor = [1 1 1];
            app.Feature2DropDownLabel.HorizontalAlignment = 'right';
            app.Feature2DropDownLabel.Position = [868 391 55 22];
            app.Feature2DropDownLabel.Text = 'Feature 2';

            % Create Feature2DropDown
            app.Feature2DropDown = uidropdown(app.PlotsTab);
            app.Feature2DropDown.BackgroundColor = [1 1 1];
            app.Feature2DropDown.Position = [938 391 268 22];

            % Create ResultsPanel
            app.ResultsPanel = uipanel(app.ManualEntryTab);
            app.ResultsPanel.AutoResizeChildren = 'off';
            app.ResultsPanel.ForegroundColor = [0 1 0];
            app.ResultsPanel.BorderType = 'none';
            app.ResultsPanel.TitlePosition = 'centertop';
            app.ResultsPanel.Title = 'Results';
            app.ResultsPanel.Visible = 'off';
            app.ResultsPanel.BackgroundColor = [0.502 0.502 0.502];
            app.ResultsPanel.FontWeight = 'bold';
            app.ResultsPanel.Position = [26 67 407 462];

            % Create LCModelEntryPanel
            app.LCModelEntryPanel = uipanel(app.ManualEntryTab);
            app.LCModelEntryPanel.AutoResizeChildren = 'off';
            app.LCModelEntryPanel.ForegroundColor = [1 1 1];
            app.LCModelEntryPanel.BorderType = 'none';
            app.LCModelEntryPanel.TitlePosition = 'centertop';
            app.LCModelEntryPanel.Title = 'LC Model Entry';
            app.LCModelEntryPanel.Visible = 'off';
            app.LCModelEntryPanel.BackgroundColor = [0.502 0.502 0.502];
            app.LCModelEntryPanel.FontName = 'Arial';
            app.LCModelEntryPanel.Position = [454 126 334 461];

            % Create LoadButton_3
            app.LoadButton_3 = uibutton(app.LCModelEntryPanel, 'push');
            app.LoadButton_3.ButtonPushedFcn = createCallbackFcn(app, @LoadButton_3Pushed, true);
            app.LoadButton_3.BackgroundColor = [0.502 0.502 0.502];
            app.LoadButton_3.FontWeight = 'bold';
            app.LoadButton_3.FontColor = [1 1 1];
            app.LoadButton_3.Position = [110 347 100 42];
            app.LoadButton_3.Text = 'Load';

            % Create ClassifyButton_2
            app.ClassifyButton_2 = uibutton(app.LCModelEntryPanel, 'push');
            app.ClassifyButton_2.ButtonPushedFcn = createCallbackFcn(app, @ClassifyButton_2Pushed, true);
            app.ClassifyButton_2.BackgroundColor = [0.4667 0.6745 0.1882];
            app.ClassifyButton_2.FontWeight = 'bold';
            app.ClassifyButton_2.FontColor = [1 1 1];
            app.ClassifyButton_2.Position = [110 103 100 42];
            app.ClassifyButton_2.Text = 'Classify';

            % Create ModelsListBox_2Label
            app.ModelsListBox_2Label = uilabel(app.LCModelEntryPanel);
            app.ModelsListBox_2Label.BackgroundColor = [0.502 0.502 0.502];
            app.ModelsListBox_2Label.HorizontalAlignment = 'right';
            app.ModelsListBox_2Label.FontColor = [1 1 1];
            app.ModelsListBox_2Label.Position = [65 310 42 22];
            app.ModelsListBox_2Label.Text = 'Models';

            % Create ModelsListBox_2
            app.ModelsListBox_2 = uilistbox(app.LCModelEntryPanel);
            app.ModelsListBox_2.FontColor = [1 1 1];
            app.ModelsListBox_2.BackgroundColor = [0.502 0.502 0.502];
            app.ModelsListBox_2.Position = [40 168 105 140];

            % Create CoordFilesListBoxLabel
            app.CoordFilesListBoxLabel = uilabel(app.LCModelEntryPanel);
            app.CoordFilesListBoxLabel.BackgroundColor = [0.502 0.502 0.502];
            app.CoordFilesListBoxLabel.HorizontalAlignment = 'right';
            app.CoordFilesListBoxLabel.FontColor = [1 1 1];
            app.CoordFilesListBoxLabel.Position = [192 310 65 22];
            app.CoordFilesListBoxLabel.Text = 'Coord Files';

            % Create CoordFilesListBox
            app.CoordFilesListBox = uilistbox(app.LCModelEntryPanel);
            app.CoordFilesListBox.Items = {};
            app.CoordFilesListBox.FontColor = [1 1 1];
            app.CoordFilesListBox.BackgroundColor = [0.502 0.502 0.502];
            app.CoordFilesListBox.Position = [169 168 111 140];
            app.CoordFilesListBox.Value = {};

            % Create Image14
            app.Image14 = uiimage(app.LCModelEntryPanel);
            app.Image14.ImageClickedFcn = createCallbackFcn(app, @Image14Clicked, true);
            app.Image14.Position = [22 29 24 19];
            app.Image14.ImageSource = 'left-arrow.png';

            % Create BacktoMainMenuLabel_6
            app.BacktoMainMenuLabel_6 = uilabel(app.LCModelEntryPanel);
            app.BacktoMainMenuLabel_6.FontColor = [1 1 1];
            app.BacktoMainMenuLabel_6.Position = [52 28 103 22];
            app.BacktoMainMenuLabel_6.Text = 'Back to Main Menu';

            % Create MR_Diffusion
            app.MR_Diffusion = uitabgroup(app.GliomaIDHMutationDiagnosisToolUIFigure);
            app.MR_Diffusion.Visible = 'off';
            app.MR_Diffusion.SelectionChangedFcn = createCallbackFcn(app, @MR_DiffusionSelectionChanged, true);
            app.MR_Diffusion.Position = [176 -4 1332 676];

            % Create Tab_3
            app.Tab_3 = uitab(app.MR_Diffusion);
            app.Tab_3.Title = 'Tab';
            app.Tab_3.BackgroundColor = [1 1 1];

            % Create Tab2_3
            app.Tab2_3 = uitab(app.MR_Diffusion);
            app.Tab2_3.Title = 'Tab2';

            % Create Tree
            app.Tree = uitree(app.GliomaIDHMutationDiagnosisToolUIFigure);
            app.Tree.SelectionChangedFcn = createCallbackFcn(app, @TreeSelectionChanged, true);
            app.Tree.FontName = 'Arial';
            app.Tree.FontWeight = 'bold';
            app.Tree.Position = [1 364 172 309];

            % Create NormalUserNode
            app.NormalUserNode = uitreenode(app.Tree);
            app.NormalUserNode.NodeData = 'MR_Spectroscopy';
            app.NormalUserNode.Text = 'Normal User';

            % Create MRSpectroscopyNode
            app.MRSpectroscopyNode = uitreenode(app.NormalUserNode);
            app.MRSpectroscopyNode.NodeData = 'MR_Spectroscopy';
            app.MRSpectroscopyNode.Text = 'MR Spectroscopy';

            % Create MassSpectroscopyNode
            app.MassSpectroscopyNode = uitreenode(app.NormalUserNode);
            app.MassSpectroscopyNode.NodeData = 'MassSpectroscopy';
            app.MassSpectroscopyNode.Text = 'Mass Spectroscopy';

            % Create AdvancedUserNode
            app.AdvancedUserNode = uitreenode(app.Tree);
            app.AdvancedUserNode.NodeData = 'AdvancedUser';
            app.AdvancedUserNode.Text = 'Advanced User';

            % Create AboutNode
            app.AboutNode = uitreenode(app.Tree);
            app.AboutNode.NodeData = 'About';
            app.AboutNode.Text = 'About';

            % Create AdvancedUser
            app.AdvancedUser = uitabgroup(app.GliomaIDHMutationDiagnosisToolUIFigure);
            app.AdvancedUser.Position = [172 -7 1338 680];

            % Create TrainerTab
            app.TrainerTab = uitab(app.AdvancedUser);
            app.TrainerTab.Title = 'Trainer';
            app.TrainerTab.BackgroundColor = [0.902 0.902 0.902];

            % Create trainertab
            app.trainertab = uitabgroup(app.TrainerTab);
            app.trainertab.Visible = 'off';
            app.trainertab.Position = [1 2 1360 653];

            % Create VariablePlotsTab
            app.VariablePlotsTab = uitab(app.trainertab);
            app.VariablePlotsTab.Title = 'Variable Plots';

            % Create trainerpanel
            app.trainerpanel = uipanel(app.VariablePlotsTab);
            app.trainerpanel.ForegroundColor = [1 1 1];
            app.trainerpanel.BackgroundColor = [1 1 1];
            app.trainerpanel.Position = [2 49 828 579];

            % Create Variable1DropDownLabel
            app.Variable1DropDownLabel = uilabel(app.VariablePlotsTab);
            app.Variable1DropDownLabel.HorizontalAlignment = 'right';
            app.Variable1DropDownLabel.Position = [854 559 55 22];
            app.Variable1DropDownLabel.Text = 'Variable1';

            % Create Variable1DropDown
            app.Variable1DropDown = uidropdown(app.VariablePlotsTab);
            app.Variable1DropDown.ValueChangedFcn = createCallbackFcn(app, @Variable1DropDownValueChanged, true);
            app.Variable1DropDown.Position = [924 559 230 22];

            % Create Variable2DropDownLabel
            app.Variable2DropDownLabel = uilabel(app.VariablePlotsTab);
            app.Variable2DropDownLabel.HorizontalAlignment = 'right';
            app.Variable2DropDownLabel.Position = [854 487 55 22];
            app.Variable2DropDownLabel.Text = 'Variable2';

            % Create Variable2DropDown
            app.Variable2DropDown = uidropdown(app.VariablePlotsTab);
            app.Variable2DropDown.Position = [924 487 231 22];

            % Create plots_2
            app.plots_2 = uibutton(app.VariablePlotsTab, 'push');
            app.plots_2.ButtonPushedFcn = createCallbackFcn(app, @plotsButtonPushed, true);
            app.plots_2.BackgroundColor = [0.0902 0.5804 0.0824];
            app.plots_2.FontWeight = 'bold';
            app.plots_2.FontColor = [1 1 1];
            app.plots_2.Position = [875 241 256 29];
            app.plots_2.Text = 'NEW PLOT';

            % Create PLOTSButtonGroup
            app.PLOTSButtonGroup = uibuttongroup(app.VariablePlotsTab);
            app.PLOTSButtonGroup.BorderType = 'none';
            app.PLOTSButtonGroup.Title = 'PLOTS';
            app.PLOTSButtonGroup.Position = [844 292 336 171];

            % Create VariablePlotButton
            app.VariablePlotButton = uitogglebutton(app.PLOTSButtonGroup);
            app.VariablePlotButton.Text = 'Variable Plot';
            app.VariablePlotButton.Position = [11 119 100 22];
            app.VariablePlotButton.Value = true;

            % Create SpiderPlotButton
            app.SpiderPlotButton = uitogglebutton(app.PLOTSButtonGroup);
            app.SpiderPlotButton.Text = 'Spider Plot';
            app.SpiderPlotButton.Position = [11 98 100 22];

            % Create BoxPlotButton
            app.BoxPlotButton = uitogglebutton(app.PLOTSButtonGroup);
            app.BoxPlotButton.Text = 'Box Plot';
            app.BoxPlotButton.Position = [11 77 100 22];

            % Create LinePlotButton_3
            app.LinePlotButton_3 = uitogglebutton(app.PLOTSButtonGroup);
            app.LinePlotButton_3.Text = 'Line Plot';
            app.LinePlotButton_3.Position = [11 57 100 22];

            % Create CompactCheckBox_3
            app.CompactCheckBox_3 = uicheckbox(app.PLOTSButtonGroup);
            app.CompactCheckBox_3.Text = 'Compact';
            app.CompactCheckBox_3.Position = [121 78 70 22];

            % Create MeanSpiderCheckBox
            app.MeanSpiderCheckBox = uicheckbox(app.PLOTSButtonGroup);
            app.MeanSpiderCheckBox.Text = 'Mean Spider';
            app.MeanSpiderCheckBox.Position = [121 100 87 23];

            % Create MergeCheckBox
            app.MergeCheckBox = uicheckbox(app.PLOTSButtonGroup);
            app.MergeCheckBox.Text = 'Merge';
            app.MergeCheckBox.Position = [207 99 54 22];

            % Create BarPlotButton_3
            app.BarPlotButton_3 = uitogglebutton(app.PLOTSButtonGroup);
            app.BarPlotButton_3.Text = 'Bar Plot';
            app.BarPlotButton_3.Position = [11 37 100 22];

            % Create ScatterCheck
            app.ScatterCheck = uicheckbox(app.PLOTSButtonGroup);
            app.ScatterCheck.Text = 'Scatter';
            app.ScatterCheck.Position = [229 58 59 22];

            % Create CISpinnerLabel
            app.CISpinnerLabel = uilabel(app.PLOTSButtonGroup);
            app.CISpinnerLabel.HorizontalAlignment = 'right';
            app.CISpinnerLabel.Position = [141 54 10 22];
            app.CISpinnerLabel.Text = 'CI';

            % Create CISpinner
            app.CISpinner = uispinner(app.PLOTSButtonGroup);
            app.CISpinner.Step = 0.01;
            app.CISpinner.Limits = [0 1];
            app.CISpinner.Position = [157 55 54 22];
            app.CISpinner.Value = 0.95;

            % Create CheckBox
            app.CheckBox = uicheckbox(app.PLOTSButtonGroup);
            app.CheckBox.Text = '';
            app.CheckBox.Position = [121 54 25 22];

            % Create PCAPlotButton_3
            app.PCAPlotButton_3 = uitogglebutton(app.PLOTSButtonGroup);
            app.PCAPlotButton_3.Text = 'PCA Plot';
            app.PCAPlotButton_3.Position = [11 17 100 22];

            % Create DimensionSpinnerLabel
            app.DimensionSpinnerLabel = uilabel(app.PLOTSButtonGroup);
            app.DimensionSpinnerLabel.HorizontalAlignment = 'right';
            app.DimensionSpinnerLabel.Position = [121 17 58 22];
            app.DimensionSpinnerLabel.Text = 'Dimension';

            % Create DimensionSpinner
            app.DimensionSpinner = uispinner(app.PLOTSButtonGroup);
            app.DimensionSpinner.Limits = [2 3];
            app.DimensionSpinner.Position = [193 17 68 22];
            app.DimensionSpinner.Value = 2;

            % Create Image16
            app.Image16 = uiimage(app.VariablePlotsTab);
            app.Image16.ImageClickedFcn = createCallbackFcn(app, @Image16Clicked, true);
            app.Image16.Position = [858 124 33 16];
            app.Image16.ImageSource = 'left-arrow.png';

            % Create BacktomainmenuLabel
            app.BacktomainmenuLabel = uilabel(app.VariablePlotsTab);
            app.BacktomainmenuLabel.Position = [888 121 106 22];
            app.BacktomainmenuLabel.Text = 'Back to main menu';

            % Create Image16_2
            app.Image16_2 = uiimage(app.VariablePlotsTab);
            app.Image16_2.ImageClickedFcn = createCallbackFcn(app, @Image16_2Clicked, true);
            app.Image16_2.Position = [858 104 33 16];
            app.Image16_2.ImageSource = 'left-arrow.png';

            % Create BacktopreviousmenuLabel
            app.BacktopreviousmenuLabel = uilabel(app.VariablePlotsTab);
            app.BacktopreviousmenuLabel.Position = [888 101 126 22];
            app.BacktopreviousmenuLabel.Text = 'Back to previous menu';

            % Create ModelPlotsTab
            app.ModelPlotsTab = uitab(app.trainertab);
            app.ModelPlotsTab.Title = 'Model Plots';

            % Create Panel_2
            app.Panel_2 = uipanel(app.ModelPlotsTab);
            app.Panel_2.BackgroundColor = [0.2706 0.2549 0.2549];
            app.Panel_2.Position = [12 71 860 549];

            % Create MODELSListBox_3Label
            app.MODELSListBox_3Label = uilabel(app.ModelPlotsTab);
            app.MODELSListBox_3Label.HorizontalAlignment = 'right';
            app.MODELSListBox_3Label.Position = [1009 593 55 22];
            app.MODELSListBox_3Label.Text = 'MODELS';

            % Create MODELSListBox_3
            app.MODELSListBox_3 = uilistbox(app.ModelPlotsTab);
            app.MODELSListBox_3.Items = {};
            app.MODELSListBox_3.Position = [908 185 294 404];
            app.MODELSListBox_3.Value = {};

            % Create RefreshButton
            app.RefreshButton = uibutton(app.ModelPlotsTab, 'push');
            app.RefreshButton.ButtonPushedFcn = createCallbackFcn(app, @RefreshButtonPushed, true);
            app.RefreshButton.BackgroundColor = [0.302 0.7451 0.9333];
            app.RefreshButton.Position = [913 145 138 27];
            app.RefreshButton.Text = 'Refresh';

            % Create PlotButton_2
            app.PlotButton_2 = uibutton(app.ModelPlotsTab, 'push');
            app.PlotButton_2.ButtonPushedFcn = createCallbackFcn(app, @PlotButton_2Pushed, true);
            app.PlotButton_2.BackgroundColor = [0.4667 0.6745 0.1882];
            app.PlotButton_2.FontColor = [1 1 1];
            app.PlotButton_2.Position = [1064 145 138 27];
            app.PlotButton_2.Text = 'Plot ';

            % Create TrainingPanel
            app.TrainingPanel = uipanel(app.TrainerTab);
            app.TrainingPanel.BorderType = 'none';
            app.TrainingPanel.Title = 'Training';
            app.TrainingPanel.Visible = 'off';
            app.TrainingPanel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TrainingPanel.FontName = 'Arial Black';
            app.TrainingPanel.FontWeight = 'bold';
            app.TrainingPanel.FontSize = 16;
            app.TrainingPanel.Position = [1 10 1359 647];

            % Create KNN
            app.KNN = uipanel(app.TrainingPanel);
            app.KNN.BorderType = 'none';
            app.KNN.Title = 'KNN';
            app.KNN.BackgroundColor = [0.9412 0.9412 0.9412];
            app.KNN.FontName = 'Arial';
            app.KNN.FontWeight = 'bold';
            app.KNN.Position = [14 395 1085 87];

            % Create Image5
            app.Image5 = uiimage(app.KNN);
            app.Image5.ImageClickedFcn = createCallbackFcn(app, @Image5Clicked, true);
            app.Image5.HorizontalAlignment = 'right';
            app.Image5.Position = [25 14 51 40];
            app.Image5.ImageSource = 'grain.png';

            % Create WeightedKNNLabel
            app.WeightedKNNLabel = uilabel(app.KNN);
            app.WeightedKNNLabel.FontWeight = 'bold';
            app.WeightedKNNLabel.Position = [87 23 144 22];
            app.WeightedKNNLabel.Text = 'Weighted KNN';

            % Create CoarseKNNLabel
            app.CoarseKNNLabel = uilabel(app.KNN);
            app.CoarseKNNLabel.FontWeight = 'bold';
            app.CoarseKNNLabel.Position = [308 23 140 22];
            app.CoarseKNNLabel.Text = 'Coarse KNN';

            % Create Image5_5
            app.Image5_5 = uiimage(app.KNN);
            app.Image5_5.ImageClickedFcn = createCallbackFcn(app, @Image5_5Clicked, true);
            app.Image5_5.HorizontalAlignment = 'right';
            app.Image5_5.Position = [241 14 51 40];
            app.Image5_5.ImageSource = 'grain.png';

            % Create fineknn
            app.fineknn = uiimage(app.KNN);
            app.fineknn.ImageClickedFcn = createCallbackFcn(app, @fineknnImageClicked, true);
            app.fineknn.HorizontalAlignment = 'right';
            app.fineknn.Position = [447 14 51 40];
            app.fineknn.ImageSource = 'grain.png';

            % Create FineKNNLabel
            app.FineKNNLabel = uilabel(app.KNN);
            app.FineKNNLabel.FontWeight = 'bold';
            app.FineKNNLabel.Position = [514 23 133 22];
            app.FineKNNLabel.Text = 'Fine KNN';

            % Create fineknn_2
            app.fineknn_2 = uiimage(app.KNN);
            app.fineknn_2.ImageClickedFcn = createCallbackFcn(app, @fineknn_2ImageClicked, true);
            app.fineknn_2.HorizontalAlignment = 'right';
            app.fineknn_2.Position = [653 14 51 40];
            app.fineknn_2.ImageSource = 'grain.png';

            % Create CubicKNNLabel
            app.CubicKNNLabel = uilabel(app.KNN);
            app.CubicKNNLabel.FontWeight = 'bold';
            app.CubicKNNLabel.Position = [714 23 133 22];
            app.CubicKNNLabel.Text = 'Cubic KNN';

            % Create fineknn_3
            app.fineknn_3 = uiimage(app.KNN);
            app.fineknn_3.ImageClickedFcn = createCallbackFcn(app, @fineknn_3ImageClicked, true);
            app.fineknn_3.HorizontalAlignment = 'right';
            app.fineknn_3.Position = [859 14 51 40];
            app.fineknn_3.ImageSource = 'grain.png';

            % Create CosineKNNLabel
            app.CosineKNNLabel = uilabel(app.KNN);
            app.CosineKNNLabel.FontWeight = 'bold';
            app.CosineKNNLabel.Position = [920 23 172 22];
            app.CosineKNNLabel.Text = 'Cosine KNN';

            % Create SVM
            app.SVM = uipanel(app.TrainingPanel);
            app.SVM.BorderType = 'none';
            app.SVM.Title = 'SVM';
            app.SVM.BackgroundColor = [0.9412 0.9412 0.9412];
            app.SVM.FontName = 'Arial';
            app.SVM.FontWeight = 'bold';
            app.SVM.Position = [14 299 1206 89];

            % Create linearsvm
            app.linearsvm = uiimage(app.SVM);
            app.linearsvm.ImageClickedFcn = createCallbackFcn(app, @linearsvmClicked, true);
            app.linearsvm.HorizontalAlignment = 'right';
            app.linearsvm.Position = [25 12 51 40];
            app.linearsvm.ImageSource = 'vector.png';

            % Create LinearSVMLabel
            app.LinearSVMLabel = uilabel(app.SVM);
            app.LinearSVMLabel.FontName = 'Arial';
            app.LinearSVMLabel.FontWeight = 'bold';
            app.LinearSVMLabel.Position = [87 21 144 22];
            app.LinearSVMLabel.Text = 'Linear SVM';

            % Create QuadraticSVMLabel
            app.QuadraticSVMLabel = uilabel(app.SVM);
            app.QuadraticSVMLabel.FontName = 'Arial';
            app.QuadraticSVMLabel.FontWeight = 'bold';
            app.QuadraticSVMLabel.Position = [308 21 132 22];
            app.QuadraticSVMLabel.Text = 'Quadratic SVM';

            % Create quadraticsvm
            app.quadraticsvm = uiimage(app.SVM);
            app.quadraticsvm.ImageClickedFcn = createCallbackFcn(app, @quadraticsvmImageClicked, true);
            app.quadraticsvm.HorizontalAlignment = 'right';
            app.quadraticsvm.Position = [241 12 51 40];
            app.quadraticsvm.ImageSource = 'vector.png';

            % Create Image5_4
            app.Image5_4 = uiimage(app.SVM);
            app.Image5_4.ImageClickedFcn = createCallbackFcn(app, @Image5_4Clicked, true);
            app.Image5_4.HorizontalAlignment = 'right';
            app.Image5_4.Position = [447 12 51 40];
            app.Image5_4.ImageSource = 'vector.png';

            % Create CubicSVMLabel
            app.CubicSVMLabel = uilabel(app.SVM);
            app.CubicSVMLabel.FontName = 'Arial';
            app.CubicSVMLabel.FontWeight = 'bold';
            app.CubicSVMLabel.Position = [514 21 133 22];
            app.CubicSVMLabel.Text = 'Cubic SVM';

            % Create Image5_6
            app.Image5_6 = uiimage(app.SVM);
            app.Image5_6.ImageClickedFcn = createCallbackFcn(app, @Image5_6Clicked, true);
            app.Image5_6.HorizontalAlignment = 'right';
            app.Image5_6.Position = [653 12 51 40];
            app.Image5_6.ImageSource = 'vector.png';

            % Create FineGaussianSVMLabel
            app.FineGaussianSVMLabel = uilabel(app.SVM);
            app.FineGaussianSVMLabel.FontName = 'Arial';
            app.FineGaussianSVMLabel.FontWeight = 'bold';
            app.FineGaussianSVMLabel.Position = [720 21 140 22];
            app.FineGaussianSVMLabel.Text = 'Fine Gaussian SVM';

            % Create Image5_7
            app.Image5_7 = uiimage(app.SVM);
            app.Image5_7.ImageClickedFcn = createCallbackFcn(app, @Image5_7Clicked, true);
            app.Image5_7.HorizontalAlignment = 'right';
            app.Image5_7.Position = [859 12 51 40];
            app.Image5_7.ImageSource = 'vector.png';

            % Create MediumGaussianSVMLabel
            app.MediumGaussianSVMLabel = uilabel(app.SVM);
            app.MediumGaussianSVMLabel.FontName = 'Arial';
            app.MediumGaussianSVMLabel.FontWeight = 'bold';
            app.MediumGaussianSVMLabel.Position = [926 21 166 22];
            app.MediumGaussianSVMLabel.Text = 'Medium Gaussian SVM';

            % Create Forest
            app.Forest = uipanel(app.TrainingPanel);
            app.Forest.BorderType = 'none';
            app.Forest.Title = 'Forest';
            app.Forest.BackgroundColor = [0.9412 0.9412 0.9412];
            app.Forest.FontName = 'Arial';
            app.Forest.FontWeight = 'bold';
            app.Forest.Position = [15 189 996 108];

            % Create CoarseTree
            app.CoarseTree = uiimage(app.Forest);
            app.CoarseTree.ImageClickedFcn = createCallbackFcn(app, @CoarseTreeImageClicked, true);
            app.CoarseTree.HorizontalAlignment = 'right';
            app.CoarseTree.Position = [241 19 51 40];
            app.CoarseTree.ImageSource = 'algorithm2.png';

            % Create MediumTree
            app.MediumTree = uiimage(app.Forest);
            app.MediumTree.ImageClickedFcn = createCallbackFcn(app, @MediumTreeClicked, true);
            app.MediumTree.HorizontalAlignment = 'right';
            app.MediumTree.Position = [28 20 51 40];
            app.MediumTree.ImageSource = 'algorithm2.png';

            % Create MediumTreeLabel
            app.MediumTreeLabel = uilabel(app.Forest);
            app.MediumTreeLabel.FontName = 'Arial';
            app.MediumTreeLabel.FontWeight = 'bold';
            app.MediumTreeLabel.Position = [87 28 144 22];
            app.MediumTreeLabel.Text = 'Medium Tree';

            % Create CoarseTreeLabel
            app.CoarseTreeLabel = uilabel(app.Forest);
            app.CoarseTreeLabel.FontName = 'Arial';
            app.CoarseTreeLabel.FontWeight = 'bold';
            app.CoarseTreeLabel.Position = [308 28 132 22];
            app.CoarseTreeLabel.Text = 'Coarse Tree';

            % Create CoarseTree_2
            app.CoarseTree_2 = uiimage(app.Forest);
            app.CoarseTree_2.ImageClickedFcn = createCallbackFcn(app, @CoarseTree_2ImageClicked, true);
            app.CoarseTree_2.HorizontalAlignment = 'right';
            app.CoarseTree_2.Position = [447 19 51 40];
            app.CoarseTree_2.ImageSource = 'algorithm2.png';

            % Create FineTreeLabel
            app.FineTreeLabel = uilabel(app.Forest);
            app.FineTreeLabel.FontName = 'Arial';
            app.FineTreeLabel.FontWeight = 'bold';
            app.FineTreeLabel.Position = [514 28 132 22];
            app.FineTreeLabel.Text = 'Fine Tree';

            % Create Ensemble
            app.Ensemble = uipanel(app.TrainingPanel);
            app.Ensemble.BorderType = 'none';
            app.Ensemble.Title = 'Ensemble';
            app.Ensemble.BackgroundColor = [0.9412 0.9412 0.9412];
            app.Ensemble.FontName = 'Arial';
            app.Ensemble.FontWeight = 'bold';
            app.Ensemble.Position = [15 92 996 92];

            % Create BoostedTrees
            app.BoostedTrees = uiimage(app.Ensemble);
            app.BoostedTrees.ImageClickedFcn = createCallbackFcn(app, @BoostedTreesImageClicked, true);
            app.BoostedTrees.HorizontalAlignment = 'right';
            app.BoostedTrees.Position = [28 16 51 40];
            app.BoostedTrees.ImageSource = 'intersection.png';

            % Create BoostedTreesLabel
            app.BoostedTreesLabel = uilabel(app.Ensemble);
            app.BoostedTreesLabel.FontName = 'Arial';
            app.BoostedTreesLabel.FontWeight = 'bold';
            app.BoostedTreesLabel.Position = [87 24 144 22];
            app.BoostedTreesLabel.Text = 'Boosted Trees';

            % Create BaggedTree
            app.BaggedTree = uiimage(app.Ensemble);
            app.BaggedTree.ImageClickedFcn = createCallbackFcn(app, @BaggedTreeImageClicked, true);
            app.BaggedTree.HorizontalAlignment = 'right';
            app.BaggedTree.Position = [241 15 51 40];
            app.BaggedTree.ImageSource = 'intersection.png';

            % Create BaggedTreesLabel
            app.BaggedTreesLabel = uilabel(app.Ensemble);
            app.BaggedTreesLabel.FontName = 'Arial';
            app.BaggedTreesLabel.FontWeight = 'bold';
            app.BaggedTreesLabel.Position = [308 24 132 22];
            app.BaggedTreesLabel.Text = 'Bagged Trees';

            % Create Discriminant
            app.Discriminant = uiimage(app.Ensemble);
            app.Discriminant.ImageClickedFcn = createCallbackFcn(app, @DiscriminantImageClicked, true);
            app.Discriminant.HorizontalAlignment = 'right';
            app.Discriminant.Position = [447 16 51 40];
            app.Discriminant.ImageSource = 'intersection.png';

            % Create DiscriminantLabel
            app.DiscriminantLabel = uilabel(app.Ensemble);
            app.DiscriminantLabel.FontName = 'Arial';
            app.DiscriminantLabel.FontWeight = 'bold';
            app.DiscriminantLabel.Position = [514 27 132 22];
            app.DiscriminantLabel.Text = 'Discriminant';

            % Create RUSB
            app.RUSB = uiimage(app.Ensemble);
            app.RUSB.ImageClickedFcn = createCallbackFcn(app, @RUSBImageClicked, true);
            app.RUSB.HorizontalAlignment = 'right';
            app.RUSB.Position = [653 16 51 40];
            app.RUSB.ImageSource = 'intersection.png';

            % Create RUSBoostedLabel
            app.RUSBoostedLabel = uilabel(app.Ensemble);
            app.RUSBoostedLabel.FontName = 'Arial';
            app.RUSBoostedLabel.FontWeight = 'bold';
            app.RUSBoostedLabel.Position = [720 26 132 22];
            app.RUSBoostedLabel.Text = 'RUSBoosted';

            % Create KFoldCrossValidationLabel
            app.KFoldCrossValidationLabel = uilabel(app.TrainingPanel);
            app.KFoldCrossValidationLabel.FontName = 'Arial';
            app.KFoldCrossValidationLabel.FontWeight = 'bold';
            app.KFoldCrossValidationLabel.FontColor = [0 0 1];
            app.KFoldCrossValidationLabel.Position = [150 554 148 39];
            app.KFoldCrossValidationLabel.Text = 'K-Fold Cross Validation';

            % Create Image18
            app.Image18 = uiimage(app.TrainingPanel);
            app.Image18.Position = [36 554 49 39];
            app.Image18.ImageSource = 'map-folded-paper (1).png';

            % Create Spinner
            app.Spinner = uispinner(app.TrainingPanel);
            app.Spinner.Limits = [1 Inf];
            app.Spinner.ValueDisplayFormat = '%.0f';
            app.Spinner.HorizontalAlignment = 'center';
            app.Spinner.Position = [88 564 51 19];
            app.Spinner.Value = 5;

            % Create Image18_2
            app.Image18_2 = uiimage(app.TrainingPanel);
            app.Image18_2.ImageClickedFcn = createCallbackFcn(app, @Image18_2Clicked, true);
            app.Image18_2.Position = [408 552 45 41];
            app.Image18_2.ImageSource = 'border.png';

            % Create Image19
            app.Image19 = uiimage(app.TrainingPanel);
            app.Image19.ImageClickedFcn = createCallbackFcn(app, @Image19Clicked, true);
            app.Image19.Position = [36 42 57 23];
            app.Image19.ImageSource = 'left-arrow.png';

            % Create BacktoMainMenuLabel_8
            app.BacktoMainMenuLabel_8 = uilabel(app.TrainingPanel);
            app.BacktoMainMenuLabel_8.FontWeight = 'bold';
            app.BacktoMainMenuLabel_8.Position = [88 43 113 22];
            app.BacktoMainMenuLabel_8.Text = 'Back to Main Menu';

            % Create Image19_2
            app.Image19_2 = uiimage(app.TrainingPanel);
            app.Image19_2.ImageClickedFcn = createCallbackFcn(app, @Image19_2Clicked, true);
            app.Image19_2.Position = [15 22 98 23];
            app.Image19_2.ImageSource = 'left-arrow.png';

            % Create BacktoPreviousMenuLabel_2
            app.BacktoPreviousMenuLabel_2 = uilabel(app.TrainingPanel);
            app.BacktoPreviousMenuLabel_2.FontWeight = 'bold';
            app.BacktoPreviousMenuLabel_2.Position = [88 23 137 22];
            app.BacktoPreviousMenuLabel_2.Text = 'Back to Previous Menu';

            % Create HoldOutSliderLabel
            app.HoldOutSliderLabel = uilabel(app.TrainingPanel);
            app.HoldOutSliderLabel.HorizontalAlignment = 'right';
            app.HoldOutSliderLabel.FontWeight = 'bold';
            app.HoldOutSliderLabel.FontColor = [0 0 1];
            app.HoldOutSliderLabel.Position = [452 571 55 22];
            app.HoldOutSliderLabel.Text = 'Hold Out';

            % Create HoldOutSlider
            app.HoldOutSlider = uislider(app.TrainingPanel);
            app.HoldOutSlider.Limits = [0 50];
            app.HoldOutSlider.MajorTicks = [0 10 20 30 40 50];
            app.HoldOutSlider.MajorTickLabels = {'0', '10', '20', '30', '40', '50'};
            app.HoldOutSlider.MinorTicks = [0 10 20 30 40 50];
            app.HoldOutSlider.Enable = 'off';
            app.HoldOutSlider.FontWeight = 'bold';
            app.HoldOutSlider.FontColor = [0 0 1];
            app.HoldOutSlider.Position = [528 580 150 3];

            % Create RunAllButton
            app.RunAllButton = uibutton(app.TrainingPanel, 'push');
            app.RunAllButton.ButtonPushedFcn = createCallbackFcn(app, @RunAllButtonPushed, true);
            app.RunAllButton.BackgroundColor = [0 0.451 0.7412];
            app.RunAllButton.FontWeight = 'bold';
            app.RunAllButton.FontColor = [1 1 1];
            app.RunAllButton.Position = [42 503 303 31];
            app.RunAllButton.Text = 'Run All';

            % Create RunADASYNButton
            app.RunADASYNButton = uibutton(app.TrainingPanel, 'push');
            app.RunADASYNButton.ButtonPushedFcn = createCallbackFcn(app, @RunADASYNButtonPushed, true);
            app.RunADASYNButton.BackgroundColor = [0.502 0.502 0.502];
            app.RunADASYNButton.FontWeight = 'bold';
            app.RunADASYNButton.FontColor = [1 1 1];
            app.RunADASYNButton.Position = [727 503 119 31];
            app.RunADASYNButton.Text = 'Run ADASYN';

            % Create RankFeaturesButton
            app.RankFeaturesButton = uibutton(app.TrainingPanel, 'push');
            app.RankFeaturesButton.ButtonPushedFcn = createCallbackFcn(app, @RankFeaturesButtonPushed, true);
            app.RankFeaturesButton.BackgroundColor = [0.502 0.502 0.502];
            app.RankFeaturesButton.FontWeight = 'bold';
            app.RankFeaturesButton.FontColor = [1 1 1];
            app.RankFeaturesButton.Position = [1054 503 112 31];
            app.RankFeaturesButton.Text = 'Rank Features';

            % Create ListBox_6
            app.ListBox_6 = uilistbox(app.TrainingPanel);
            app.ListBox_6.Multiselect = 'on';
            app.ListBox_6.Visible = 'off';
            app.ListBox_6.FontWeight = 'bold';
            app.ListBox_6.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ListBox_6.Position = [1180 296 123 236];
            app.ListBox_6.Value = {'Item 1'};

            % Create FeaturesRankDescendingOrderLabel
            app.FeaturesRankDescendingOrderLabel = uilabel(app.TrainingPanel);
            app.FeaturesRankDescendingOrderLabel.Visible = 'off';
            app.FeaturesRankDescendingOrderLabel.Position = [1180 532 123 61];
            app.FeaturesRankDescendingOrderLabel.Text = {'Features'' Rank'; ''; '(Descending Order)'};

            % Create SelectasPredictorsButton
            app.SelectasPredictorsButton = uibutton(app.TrainingPanel, 'push');
            app.SelectasPredictorsButton.ButtonPushedFcn = createCallbackFcn(app, @SelectasPredictorsButtonPushed, true);
            app.SelectasPredictorsButton.Visible = 'off';
            app.SelectasPredictorsButton.Position = [1173 253 121 22];
            app.SelectasPredictorsButton.Text = 'Select as Predictors';

            % Create SelectedFeaturesLabel
            app.SelectedFeaturesLabel = uilabel(app.TrainingPanel);
            app.SelectedFeaturesLabel.VerticalAlignment = 'top';
            app.SelectedFeaturesLabel.Visible = 'off';
            app.SelectedFeaturesLabel.Position = [1165 85 138 162];
            app.SelectedFeaturesLabel.Text = 'Selected Features';

            % Create SequentialFeatureSelectionButton
            app.SequentialFeatureSelectionButton = uibutton(app.TrainingPanel, 'push');
            app.SequentialFeatureSelectionButton.ButtonPushedFcn = createCallbackFcn(app, @SequentialFeatureSelectionButtonPushed, true);
            app.SequentialFeatureSelectionButton.BackgroundColor = [0.502 0.502 0.502];
            app.SequentialFeatureSelectionButton.FontWeight = 'bold';
            app.SequentialFeatureSelectionButton.FontColor = [1 1 1];
            app.SequentialFeatureSelectionButton.Position = [855 503 192 31];
            app.SequentialFeatureSelectionButton.Text = 'Sequential Feature Selection';

            % Create RunsSpinner
            app.RunsSpinner = uispinner(app.TrainingPanel);
            app.RunsSpinner.Limits = [1 Inf];
            app.RunsSpinner.HorizontalAlignment = 'center';
            app.RunsSpinner.FontWeight = 'bold';
            app.RunsSpinner.FontColor = [1 1 1];
            app.RunsSpinner.BackgroundColor = [0 0.4471 0.7412];
            app.RunsSpinner.Position = [410 508 65 22];
            app.RunsSpinner.Value = 1;

            % Create RunsSpinnerLabel
            app.RunsSpinnerLabel = uilabel(app.TrainingPanel);
            app.RunsSpinnerLabel.HorizontalAlignment = 'right';
            app.RunsSpinnerLabel.FontWeight = 'bold';
            app.RunsSpinnerLabel.Position = [360 508 35 22];
            app.RunsSpinnerLabel.Text = 'Runs';

            % Create ReportTrainer
            app.ReportTrainer = uipanel(app.TrainingPanel);
            app.ReportTrainer.BorderType = 'none';
            app.ReportTrainer.Position = [1096 8 243 63];

            % Create ReportAll
            app.ReportAll = uibutton(app.ReportTrainer, 'push');
            app.ReportAll.ButtonPushedFcn = createCallbackFcn(app, @ReportAllPushed, true);
            app.ReportAll.BackgroundColor = [0.502 0.502 0.502];
            app.ReportAll.FontWeight = 'bold';
            app.ReportAll.FontColor = [1 1 1];
            app.ReportAll.Position = [59 3 149 42];
            app.ReportAll.Text = 'Reporter';

            % Create AdvancedMenuPanel
            app.AdvancedMenuPanel = uipanel(app.TrainerTab);
            app.AdvancedMenuPanel.ForegroundColor = [0 0.4471 0.7412];
            app.AdvancedMenuPanel.TitlePosition = 'centertop';
            app.AdvancedMenuPanel.Title = 'Advanced Menu';
            app.AdvancedMenuPanel.Visible = 'off';
            app.AdvancedMenuPanel.FontName = 'Arial';
            app.AdvancedMenuPanel.FontWeight = 'bold';
            app.AdvancedMenuPanel.FontSize = 16;
            app.AdvancedMenuPanel.Position = [1 28 1334 628];

            % Create UITable2
            app.UITable2 = uitable(app.AdvancedMenuPanel);
            app.UITable2.ColumnName = {''};
            app.UITable2.RowName = {};
            app.UITable2.CellSelectionCallback = createCallbackFcn(app, @UITable2CellSelection, true);
            app.UITable2.Visible = 'off';
            app.UITable2.FontName = 'Arial';
            app.UITable2.Position = [373 46 880 534];

            % Create Panel_3
            app.Panel_3 = uipanel(app.AdvancedMenuPanel);
            app.Panel_3.BorderType = 'none';
            app.Panel_3.Position = [488 2 334 582];

            % Create RESPONSEListBoxLabel
            app.RESPONSEListBoxLabel = uilabel(app.Panel_3);
            app.RESPONSEListBoxLabel.BackgroundColor = [0.3098 0.3608 0.4];
            app.RESPONSEListBoxLabel.HorizontalAlignment = 'right';
            app.RESPONSEListBoxLabel.FontColor = [1 1 1];
            app.RESPONSEListBoxLabel.Visible = 'off';
            app.RESPONSEListBoxLabel.Position = [103 106 71 22];
            app.RESPONSEListBoxLabel.Text = 'RESPONSE';

            % Create RESPONSEListBox
            app.RESPONSEListBox = uilistbox(app.Panel_3);
            app.RESPONSEListBox.Items = {};
            app.RESPONSEListBox.Visible = 'off';
            app.RESPONSEListBox.FontColor = [1 1 1];
            app.RESPONSEListBox.BackgroundColor = [0.3098 0.3608 0.4];
            app.RESPONSEListBox.Position = [99 96 241 10];
            app.RESPONSEListBox.Value = {};

            % Create trainer32
            app.trainer32 = uibutton(app.Panel_3, 'push');
            app.trainer32.ButtonPushedFcn = createCallbackFcn(app, @trainer32ButtonPushed, true);
            app.trainer32.BackgroundColor = [0 0.451 0.7412];
            app.trainer32.FontName = 'Arial';
            app.trainer32.FontWeight = 'bold';
            app.trainer32.FontColor = [1 1 1];
            app.trainer32.Position = [99 358 130 42];
            app.trainer32.Text = 'Training';

            % Create PREDICTORSListBoxLabel
            app.PREDICTORSListBoxLabel = uilabel(app.Panel_3);
            app.PREDICTORSListBoxLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.PREDICTORSListBoxLabel.HorizontalAlignment = 'right';
            app.PREDICTORSListBoxLabel.FontName = 'Arial';
            app.PREDICTORSListBoxLabel.FontWeight = 'bold';
            app.PREDICTORSListBoxLabel.Position = [120 331 85 22];
            app.PREDICTORSListBoxLabel.Text = 'PREDICTORS';

            % Create PREDICTORSListBox
            app.PREDICTORSListBox = uilistbox(app.Panel_3);
            app.PREDICTORSListBox.Items = {};
            app.PREDICTORSListBox.Multiselect = 'on';
            app.PREDICTORSListBox.ValueChangedFcn = createCallbackFcn(app, @PREDICTORSListBoxValueChanged, true);
            app.PREDICTORSListBox.Tooltip = {'You can choose predictors from this listbox by clicking "Select Predictor"'};
            app.PREDICTORSListBox.FontName = 'Arial';
            app.PREDICTORSListBox.FontWeight = 'bold';
            app.PREDICTORSListBox.BackgroundColor = [0.9412 0.9412 0.9412];
            app.PREDICTORSListBox.Position = [43 198 250 131];
            app.PREDICTORSListBox.Value = {};

            % Create TrainerLoad
            app.TrainerLoad = uibutton(app.Panel_3, 'push');
            app.TrainerLoad.ButtonPushedFcn = createCallbackFcn(app, @TrainerLoadButtonPushed2, true);
            app.TrainerLoad.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TrainerLoad.FontName = 'Arial Black';
            app.TrainerLoad.Position = [112 478 102 52];
            app.TrainerLoad.Text = 'Load';

            % Create predictor
            app.predictor = uibutton(app.Panel_3, 'push');
            app.predictor.ButtonPushedFcn = createCallbackFcn(app, @predictorButtonPushed2, true);
            app.predictor.BackgroundColor = [0.4706 0.6706 0.1882];
            app.predictor.FontName = 'Arial';
            app.predictor.FontWeight = 'bold';
            app.predictor.FontColor = [0.149 0.149 0.149];
            app.predictor.Position = [76 130 176 30];
            app.predictor.Text = 'Assign Predictors/Response';

            % Create plots_3
            app.plots_3 = uibutton(app.Panel_3, 'push');
            app.plots_3.ButtonPushedFcn = createCallbackFcn(app, @plots_3ButtonPushed, true);
            app.plots_3.BackgroundColor = [0.9412 0.9412 0.9412];
            app.plots_3.FontName = 'Arial';
            app.plots_3.FontWeight = 'bold';
            app.plots_3.FontColor = [0.149 0.149 0.149];
            app.plots_3.Position = [99 404 130 35];
            app.plots_3.Text = 'Plots';

            % Create Image17
            app.Image17 = uiimage(app.Panel_3);
            app.Image17.ImageClickedFcn = createCallbackFcn(app, @Image17Clicked, true);
            app.Image17.Position = [31 10 22 19];
            app.Image17.ImageSource = 'left-arrow.png';

            % Create BacktoMainMenuLabel_7
            app.BacktoMainMenuLabel_7 = uilabel(app.Panel_3);
            app.BacktoMainMenuLabel_7.Position = [60 3 103 35];
            app.BacktoMainMenuLabel_7.Text = 'Back to Main Menu';

            % Create ResponseDropDownLabel
            app.ResponseDropDownLabel = uilabel(app.Panel_3);
            app.ResponseDropDownLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ResponseDropDownLabel.HorizontalAlignment = 'right';
            app.ResponseDropDownLabel.FontName = 'Arial';
            app.ResponseDropDownLabel.FontWeight = 'bold';
            app.ResponseDropDownLabel.Position = [10 160 63 35];
            app.ResponseDropDownLabel.Text = 'Response';

            % Create ResponseDropDown
            app.ResponseDropDown = uidropdown(app.Panel_3);
            app.ResponseDropDown.Items = {};
            app.ResponseDropDown.ValueChangedFcn = createCallbackFcn(app, @ResponseDropDownValueChanged, true);
            app.ResponseDropDown.BackgroundColor = [1 1 1];
            app.ResponseDropDown.Position = [88 163 205 25];
            app.ResponseDropDown.Value = {};

            % Create ApplyCRLBThresholdMRSpectroscopyButton
            app.ApplyCRLBThresholdMRSpectroscopyButton = uibutton(app.Panel_3, 'push');
            app.ApplyCRLBThresholdMRSpectroscopyButton.ButtonPushedFcn = createCallbackFcn(app, @ApplyCRLBThresholdMRSpectroscopyButtonPushed, true);
            app.ApplyCRLBThresholdMRSpectroscopyButton.Position = [42 86 241 38];
            app.ApplyCRLBThresholdMRSpectroscopyButton.Text = {'Apply CRLB Threshold-(MR Spectroscopy)'; ''};

            % Create Selectsubtab
            app.Selectsubtab = uibutton(app.Panel_3, 'push');
            app.Selectsubtab.ButtonPushedFcn = createCallbackFcn(app, @SelectsubtabButtonPushed, true);
            app.Selectsubtab.BackgroundColor = [0.4706 0.6706 0.1882];
            app.Selectsubtab.FontName = 'Arial';
            app.Selectsubtab.FontWeight = 'bold';
            app.Selectsubtab.FontColor = [0.149 0.149 0.149];
            app.Selectsubtab.Position = [80 57 174 31];
            app.Selectsubtab.Text = 'SelectSubTab';

            % Create PredictorsLabel
            app.PredictorsLabel = uilabel(app.AdvancedMenuPanel);
            app.PredictorsLabel.FontName = 'Arial';
            app.PredictorsLabel.FontWeight = 'bold';
            app.PredictorsLabel.FontAngle = 'italic';
            app.PredictorsLabel.FontColor = [0.4667 0.6745 0.1882];
            app.PredictorsLabel.Visible = 'off';
            app.PredictorsLabel.Position = [381 20 650 22];
            app.PredictorsLabel.Text = '*Predictors';

            % Create ResponseLabel
            app.ResponseLabel = uilabel(app.AdvancedMenuPanel);
            app.ResponseLabel.FontName = 'Arial';
            app.ResponseLabel.FontWeight = 'bold';
            app.ResponseLabel.FontAngle = 'italic';
            app.ResponseLabel.FontColor = [0 0 1];
            app.ResponseLabel.Visible = 'off';
            app.ResponseLabel.Position = [381 2 665 21];
            app.ResponseLabel.Text = '*Response';

            % Create UITable5
            app.UITable5 = uitable(app.AdvancedMenuPanel);
            app.UITable5.ColumnName = {'Column 1'; 'Column 2'; 'Column 3'; 'Column 4'};
            app.UITable5.RowName = {};
            app.UITable5.Visible = 'off';
            app.UITable5.Position = [397 465 59 75];

            % Create ModelParametersPanel
            app.ModelParametersPanel = uipanel(app.TrainerTab);
            app.ModelParametersPanel.BorderType = 'none';
            app.ModelParametersPanel.Title = 'Model Parameters';
            app.ModelParametersPanel.Visible = 'off';
            app.ModelParametersPanel.BackgroundColor = [0.902 0.902 0.902];
            app.ModelParametersPanel.Position = [13 61 1260 493];

            % Create Tree2
            app.Tree2 = uitree(app.ModelParametersPanel);
            app.Tree2.NodeExpandedFcn = createCallbackFcn(app, @Tree2NodeExpanded, true);
            app.Tree2.FontWeight = 'bold';
            app.Tree2.BackgroundColor = [0.902 0.902 0.902];
            app.Tree2.Position = [3 166 318 260];

            % Create models2
            app.models2 = uitreenode(app.Tree2);
            app.models2.Text = 'models';

            % Create Node2
            app.Node2 = uitreenode(app.models2);
            app.Node2.Text = 'Node2';

            % Create advancedList
            app.advancedList = uilistbox(app.ModelParametersPanel);
            app.advancedList.Items = {};
            app.advancedList.BackgroundColor = [0.902 0.902 0.902];
            app.advancedList.Position = [486 33 153 388];
            app.advancedList.Value = {};

            % Create advancedPlot
            app.advancedPlot = uibutton(app.ModelParametersPanel, 'push');
            app.advancedPlot.ButtonPushedFcn = createCallbackFcn(app, @advancedPlotButtonPushed, true);
            app.advancedPlot.BackgroundColor = [0.4706 0.4471 0.4471];
            app.advancedPlot.FontWeight = 'bold';
            app.advancedPlot.FontColor = [1 1 1];
            app.advancedPlot.Position = [24 96 83 32];
            app.advancedPlot.Text = 'Plot';

            % Create SubplotCheckBox
            app.SubplotCheckBox = uicheckbox(app.ModelParametersPanel);
            app.SubplotCheckBox.Text = 'Subplot';
            app.SubplotCheckBox.Position = [126 101 192 22];

            % Create advancedPanel
            app.advancedPanel = uipanel(app.ModelParametersPanel);
            app.advancedPanel.BorderType = 'none';
            app.advancedPanel.BackgroundColor = [0.902 0.902 0.902];
            app.advancedPanel.Position = [650 35 611 386];

            % Create Image22
            app.Image22 = uiimage(app.ModelParametersPanel);
            app.Image22.ImageClickedFcn = createCallbackFcn(app, @Image22Clicked, true);
            app.Image22.Position = [38 16 15 26];
            app.Image22.ImageSource = 'left-arrow.png';

            % Create BacktoMainMenuLabel_11
            app.BacktoMainMenuLabel_11 = uilabel(app.ModelParametersPanel);
            app.BacktoMainMenuLabel_11.Position = [59 17 103 26];
            app.BacktoMainMenuLabel_11.Text = 'Back to Main Menu';

            % Create advancedPlot_2
            app.advancedPlot_2 = uibutton(app.ModelParametersPanel, 'push');
            app.advancedPlot_2.ButtonPushedFcn = createCallbackFcn(app, @advancedPlot_2ButtonPushed, true);
            app.advancedPlot_2.BackgroundColor = [0.6392 0.0784 0.1804];
            app.advancedPlot_2.FontWeight = 'bold';
            app.advancedPlot_2.FontColor = [1 1 1];
            app.advancedPlot_2.Position = [332 120 146 37];
            app.advancedPlot_2.Text = 'Delete';

            % Create ListBox_10
            app.ListBox_10 = uilistbox(app.ModelParametersPanel);
            app.ListBox_10.Items = {};
            app.ListBox_10.FontWeight = 'bold';
            app.ListBox_10.BackgroundColor = [0.902 0.902 0.902];
            app.ListBox_10.Position = [332 171 150 254];
            app.ListBox_10.Value = {};

            % Create MainMenuPanel_2
            app.MainMenuPanel_2 = uipanel(app.TrainerTab);
            app.MainMenuPanel_2.ForegroundColor = [0 0.4471 0.7412];
            app.MainMenuPanel_2.BorderType = 'none';
            app.MainMenuPanel_2.TitlePosition = 'centertop';
            app.MainMenuPanel_2.Title = 'Main Menu';
            app.MainMenuPanel_2.BackgroundColor = [0.902 0.902 0.902];
            app.MainMenuPanel_2.FontName = 'Arial Black';
            app.MainMenuPanel_2.FontWeight = 'bold';
            app.MainMenuPanel_2.Position = [522 41 368 523];

            % Create TrainNewModelButton
            app.TrainNewModelButton = uibutton(app.MainMenuPanel_2, 'push');
            app.TrainNewModelButton.ButtonPushedFcn = createCallbackFcn(app, @TrainNewModelButtonPushed, true);
            app.TrainNewModelButton.BackgroundColor = [0 0.4471 0.7412];
            app.TrainNewModelButton.FontWeight = 'bold';
            app.TrainNewModelButton.FontColor = [1 1 1];
            app.TrainNewModelButton.Position = [131 336 112 75];
            app.TrainNewModelButton.Text = 'Train New Model';

            % Create TrainedModelsButton
            app.TrainedModelsButton = uibutton(app.MainMenuPanel_2, 'push');
            app.TrainedModelsButton.ButtonPushedFcn = createCallbackFcn(app, @TrainedModelsButtonPushed, true);
            app.TrainedModelsButton.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TrainedModelsButton.FontName = 'Arial';
            app.TrainedModelsButton.FontWeight = 'bold';
            app.TrainedModelsButton.FontColor = [0 0.4471 0.7412];
            app.TrainedModelsButton.Position = [115 88 156 60];
            app.TrainedModelsButton.Text = 'Trained Models';

            % Create PlotsButton_2
            app.PlotsButton_2 = uibutton(app.MainMenuPanel_2, 'push');
            app.PlotsButton_2.ButtonPushedFcn = createCallbackFcn(app, @PlotsButton_2Pushed, true);
            app.PlotsButton_2.BackgroundColor = [0.4667 0.6745 0.1882];
            app.PlotsButton_2.FontName = 'Arial';
            app.PlotsButton_2.FontWeight = 'bold';
            app.PlotsButton_2.FontColor = [1 1 1];
            app.PlotsButton_2.Position = [115 39 156 36];
            app.PlotsButton_2.Text = 'Plots';

            % Create Image20
            app.Image20 = uiimage(app.TrainerTab);
            app.Image20.ImageClickedFcn = createCallbackFcn(app, @Image20Clicked, true);
            app.Image20.Visible = 'off';
            app.Image20.Position = [662 300 131 89];
            app.Image20.ImageSource = 'dowload.png';

            % Create ClicktoLoadDataLabel
            app.ClicktoLoadDataLabel = uilabel(app.TrainerTab);
            app.ClicktoLoadDataLabel.Visible = 'off';
            app.ClicktoLoadDataLabel.Position = [609 387 264 71];
            app.ClicktoLoadDataLabel.Text = 'Click to Load Data';

            % Create BacktoMainMenuLabel_9
            app.BacktoMainMenuLabel_9 = uilabel(app.TrainerTab);
            app.BacktoMainMenuLabel_9.Visible = 'off';
            app.BacktoMainMenuLabel_9.Position = [629 221 129 50];
            app.BacktoMainMenuLabel_9.Text = 'Back to Main Menu';

            % Create Image20_2
            app.Image20_2 = uiimage(app.TrainerTab);
            app.Image20_2.ImageClickedFcn = createCallbackFcn(app, @Image20_2Clicked, true);
            app.Image20_2.Visible = 'off';
            app.Image20_2.Position = [592 236 23 22];
            app.Image20_2.ImageSource = 'left-arrow.png';

            % Create modelsPlotALLadvanced
            app.modelsPlotALLadvanced = uipanel(app.TrainerTab);
            app.modelsPlotALLadvanced.Visible = 'off';
            app.modelsPlotALLadvanced.Position = [1 2 1358 611];

            % Create modelsplotpaneladvanced
            app.modelsplotpaneladvanced = uipanel(app.modelsPlotALLadvanced);
            app.modelsplotpaneladvanced.BorderType = 'none';
            app.modelsplotpaneladvanced.TitlePosition = 'centertop';
            app.modelsplotpaneladvanced.Title = 'MODELS PLOT';
            app.modelsplotpaneladvanced.FontWeight = 'bold';
            app.modelsplotpaneladvanced.Position = [33 59 465 467];

            % Create RefreshButton_3
            app.RefreshButton_3 = uibutton(app.modelsplotpaneladvanced, 'push');
            app.RefreshButton_3.ButtonPushedFcn = createCallbackFcn(app, @RefreshButton_3Pushed, true);
            app.RefreshButton_3.BackgroundColor = [0 1 1];
            app.RefreshButton_3.FontWeight = 'bold';
            app.RefreshButton_3.Position = [106 136 135 30];
            app.RefreshButton_3.Text = 'Refresh';

            % Create PlotButton_5
            app.PlotButton_5 = uibutton(app.modelsplotpaneladvanced, 'push');
            app.PlotButton_5.ButtonPushedFcn = createCallbackFcn(app, @PlotButton_5Pushed, true);
            app.PlotButton_5.BackgroundColor = [0.4667 0.6745 0.1882];
            app.PlotButton_5.FontWeight = 'bold';
            app.PlotButton_5.FontColor = [1 1 1];
            app.PlotButton_5.Position = [247 136 146 30];
            app.PlotButton_5.Text = 'Plot';

            % Create Image25
            app.Image25 = uiimage(app.modelsplotpaneladvanced);
            app.Image25.ImageClickedFcn = createCallbackFcn(app, @Image25Clicked, true);
            app.Image25.Position = [113 81 20 20];
            app.Image25.ImageSource = 'left-arrow.png';

            % Create BacktoMainMenuLabel_13
            app.BacktoMainMenuLabel_13 = uilabel(app.modelsplotpaneladvanced);
            app.BacktoMainMenuLabel_13.Position = [148 80 103 22];
            app.BacktoMainMenuLabel_13.Text = 'Back to Main Menu';

            % Create ModelsListBox_4Label
            app.ModelsListBox_4Label = uilabel(app.modelsplotpaneladvanced);
            app.ModelsListBox_4Label.HorizontalAlignment = 'right';
            app.ModelsListBox_4Label.FontWeight = 'bold';
            app.ModelsListBox_4Label.Position = [8 414 47 22];
            app.ModelsListBox_4Label.Text = 'Models';

            % Create ModelsListBox_4
            app.ModelsListBox_4 = uilistbox(app.modelsplotpaneladvanced);
            app.ModelsListBox_4.Items = {};
            app.ModelsListBox_4.FontWeight = 'bold';
            app.ModelsListBox_4.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ModelsListBox_4.Position = [102 185 302 253];
            app.ModelsListBox_4.Value = {};

            % Create Panel_5
            app.Panel_5 = uipanel(app.modelsPlotALLadvanced);
            app.Panel_5.Visible = 'off';
            app.Panel_5.BackgroundColor = [1 1 1];
            app.Panel_5.Position = [530 70 729 494];

            % Create Classifier
            app.Classifier = uitab(app.AdvancedUser);
            app.Classifier.Title = 'Classifier';
            app.Classifier.BackgroundColor = [1 1 1];

            % Create ClassifierMainPanel
            app.ClassifierMainPanel = uipanel(app.Classifier);
            app.ClassifierMainPanel.ForegroundColor = [0.0745 0.6235 1];
            app.ClassifierMainPanel.BorderType = 'none';
            app.ClassifierMainPanel.TitlePosition = 'centertop';
            app.ClassifierMainPanel.Title = 'Classifier Main';
            app.ClassifierMainPanel.BackgroundColor = [1 1 1];
            app.ClassifierMainPanel.FontWeight = 'bold';
            app.ClassifierMainPanel.FontSize = 14;
            app.ClassifierMainPanel.Position = [510 52 336 557];

            % Create Image21
            app.Image21 = uiimage(app.ClassifierMainPanel);
            app.Image21.ImageClickedFcn = createCallbackFcn(app, @Image21Clicked, true);
            app.Image21.Position = [110 327 130 63];
            app.Image21.ImageSource = 'table.png';

            % Create TableEntryLabel
            app.TableEntryLabel = uilabel(app.ClassifierMainPanel);
            app.TableEntryLabel.FontName = 'Arial';
            app.TableEntryLabel.FontSize = 14;
            app.TableEntryLabel.FontWeight = 'bold';
            app.TableEntryLabel.Position = [138 405 95 43];
            app.TableEntryLabel.Text = {'Table Entry'; ''};

            % Create Image21_2
            app.Image21_2 = uiimage(app.ClassifierMainPanel);
            app.Image21_2.ImageClickedFcn = createCallbackFcn(app, @Image21_2Clicked, true);
            app.Image21_2.Position = [113 138 127 76];
            app.Image21_2.ImageSource = 'rec.png';

            % Create SingleDataPointEntryLabel
            app.SingleDataPointEntryLabel = uilabel(app.ClassifierMainPanel);
            app.SingleDataPointEntryLabel.FontName = 'Arial';
            app.SingleDataPointEntryLabel.FontSize = 14;
            app.SingleDataPointEntryLabel.FontWeight = 'bold';
            app.SingleDataPointEntryLabel.Position = [94 229 168 63];
            app.SingleDataPointEntryLabel.Text = 'Single Data Point Entry';

            % Create ExcelEntry
            app.ExcelEntry = uipanel(app.Classifier);
            app.ExcelEntry.BorderType = 'none';
            app.ExcelEntry.Visible = 'off';
            app.ExcelEntry.BackgroundColor = [1 1 1];
            app.ExcelEntry.Position = [34 51 1226 545];

            % Create UITable3
            app.UITable3 = uitable(app.ExcelEntry);
            app.UITable3.ColumnName = {'Column 1'; 'Column 2'; 'Column 3'; 'Column 4'};
            app.UITable3.RowName = {};
            app.UITable3.CellSelectionCallback = createCallbackFcn(app, @UITable3CellSelection, true);
            app.UITable3.Position = [329 67 888 456];

            % Create LoadButton_5
            app.LoadButton_5 = uibutton(app.ExcelEntry, 'push');
            app.LoadButton_5.ButtonPushedFcn = createCallbackFcn(app, @LoadButton_5Pushed, true);
            app.LoadButton_5.BackgroundColor = [1 1 1];
            app.LoadButton_5.FontWeight = 'bold';
            app.LoadButton_5.Position = [39 446 257 46];
            app.LoadButton_5.Text = 'Load';

            % Create MODELSListBox_4Label
            app.MODELSListBox_4Label = uilabel(app.ExcelEntry);
            app.MODELSListBox_4Label.HorizontalAlignment = 'right';
            app.MODELSListBox_4Label.FontWeight = 'bold';
            app.MODELSListBox_4Label.FontColor = [0 0 1];
            app.MODELSListBox_4Label.Position = [29 351 57 22];
            app.MODELSListBox_4Label.Text = 'MODELS';

            % Create MODELSListBox_4
            app.MODELSListBox_4 = uilistbox(app.ExcelEntry);
            app.MODELSListBox_4.Items = {};
            app.MODELSListBox_4.ValueChangedFcn = createCallbackFcn(app, @MODELSListBox_4ValueChanged, true);
            app.MODELSListBox_4.Position = [101 147 194 228];
            app.MODELSListBox_4.Value = {};

            % Create ClassifyButton_3
            app.ClassifyButton_3 = uibutton(app.ExcelEntry, 'push');
            app.ClassifyButton_3.ButtonPushedFcn = createCallbackFcn(app, @ClassifyButton_3Pushed, true);
            app.ClassifyButton_3.BackgroundColor = [1 1 1];
            app.ClassifyButton_3.FontWeight = 'bold';
            app.ClassifyButton_3.Position = [39 397 256 40];
            app.ClassifyButton_3.Text = {'Classify'; ''};

            % Create ExportClassesButton_2
            app.ExportClassesButton_2 = uibutton(app.ExcelEntry, 'push');
            app.ExportClassesButton_2.ButtonPushedFcn = createCallbackFcn(app, @ExportClassesButton_2Pushed, true);
            app.ExportClassesButton_2.BackgroundColor = [0 0 1];
            app.ExportClassesButton_2.FontWeight = 'bold';
            app.ExportClassesButton_2.FontColor = [1 1 1];
            app.ExportClassesButton_2.Position = [39 67 258 26];
            app.ExportClassesButton_2.Text = {'Export Classes'; ''};

            % Create Image23
            app.Image23 = uiimage(app.ExcelEntry);
            app.Image23.ImageClickedFcn = createCallbackFcn(app, @Image23Clicked, true);
            app.Image23.Position = [55 30 18 19];
            app.Image23.ImageSource = 'left-arrow.png';

            % Create BacktoMainMenuLabel_12
            app.BacktoMainMenuLabel_12 = uilabel(app.ExcelEntry);
            app.BacktoMainMenuLabel_12.Position = [83 29 103 22];
            app.BacktoMainMenuLabel_12.Text = 'Back to Main Menu';

            % Create Class1Label_2
            app.Class1Label_2 = uilabel(app.ExcelEntry);
            app.Class1Label_2.FontWeight = 'bold';
            app.Class1Label_2.FontAngle = 'italic';
            app.Class1Label_2.FontColor = [0.0745 0.6235 1];
            app.Class1Label_2.Position = [348 37 315 22];
            app.Class1Label_2.Text = '*Class 1';

            % Create Class2Label_2
            app.Class2Label_2 = uilabel(app.ExcelEntry);
            app.Class2Label_2.FontWeight = 'bold';
            app.Class2Label_2.FontAngle = 'italic';
            app.Class2Label_2.FontColor = [0.3922 0.8314 0.0745];
            app.Class2Label_2.Position = [348 23 196 16];
            app.Class2Label_2.Text = '*Class 2';

            % Create RowsabovethethresholdLabel
            app.RowsabovethethresholdLabel = uilabel(app.ExcelEntry);
            app.RowsabovethethresholdLabel.FontWeight = 'bold';
            app.RowsabovethethresholdLabel.FontAngle = 'italic';
            app.RowsabovethethresholdLabel.FontColor = [1 0 0];
            app.RowsabovethethresholdLabel.Position = [349 -3 215 22];
            app.RowsabovethethresholdLabel.Text = '*Rows above the threshold.';

            % Create ManualPanel
            app.ManualPanel = uipanel(app.Classifier);
            app.ManualPanel.ForegroundColor = [0.4667 0.6745 0.1882];
            app.ManualPanel.BorderType = 'none';
            app.ManualPanel.TitlePosition = 'centertop';
            app.ManualPanel.Title = 'Manual';
            app.ManualPanel.Visible = 'off';
            app.ManualPanel.BackgroundColor = [1 1 1];
            app.ManualPanel.FontWeight = 'bold';
            app.ManualPanel.Position = [329 49 888 532];

            % Create Classify_2
            app.Classify_2 = uibutton(app.ManualPanel, 'push');
            app.Classify_2.ButtonPushedFcn = createCallbackFcn(app, @Classify_2ButtonPushed, true);
            app.Classify_2.Icon = 'output-onlinepngtools (11).png';
            app.Classify_2.BackgroundColor = [0.251 0.3216 0.2];
            app.Classify_2.FontName = 'Arial';
            app.Classify_2.FontSize = 18;
            app.Classify_2.FontWeight = 'bold';
            app.Classify_2.FontColor = [0.902 0.902 0.902];
            app.Classify_2.Enable = 'off';
            app.Classify_2.Position = [165 46 178 45];
            app.Classify_2.Text = '';

            % Create EnterButton_2
            app.EnterButton_2 = uibutton(app.ManualPanel, 'push');
            app.EnterButton_2.ButtonPushedFcn = createCallbackFcn(app, @EnterButton_2Pushed, true);
            app.EnterButton_2.Icon = 'plus.png';
            app.EnterButton_2.BackgroundColor = [1 1 1];
            app.EnterButton_2.FontName = 'Arial';
            app.EnterButton_2.FontSize = 14;
            app.EnterButton_2.FontWeight = 'bold';
            app.EnterButton_2.Position = [342 429 111 50];
            app.EnterButton_2.Text = 'Enter';

            % Create MetaboliteMenuDropDown_2
            app.MetaboliteMenuDropDown_2 = uidropdown(app.ManualPanel);
            app.MetaboliteMenuDropDown_2.Items = {};
            app.MetaboliteMenuDropDown_2.FontName = 'Arial';
            app.MetaboliteMenuDropDown_2.BackgroundColor = [1 1 1];
            app.MetaboliteMenuDropDown_2.Position = [39 439 226 26];
            app.MetaboliteMenuDropDown_2.Value = {};

            % Create EditField_2
            app.EditField_2 = uieditfield(app.ManualPanel, 'text');
            app.EditField_2.ValueChangedFcn = createCallbackFcn(app, @EditField_2ValueChanged, true);
            app.EditField_2.Position = [274 439 51 26];

            % Create ListBox_3
            app.ListBox_3 = uilistbox(app.ManualPanel);
            app.ListBox_3.Items = {};
            app.ListBox_3.ValueChangedFcn = createCallbackFcn(app, @ListBox_3ValueChanged, true);
            app.ListBox_3.FontName = 'Arial';
            app.ListBox_3.FontSize = 14;
            app.ListBox_3.FontWeight = 'bold';
            app.ListBox_3.Position = [264 101 201 305];
            app.ListBox_3.Value = {};

            % Create Tree3_2
            app.Tree3_2 = uitree(app.ManualPanel);
            app.Tree3_2.SelectionChangedFcn = createCallbackFcn(app, @Tree3_2SelectionChanged, true);
            app.Tree3_2.FontName = 'Bodoni MT';
            app.Tree3_2.Position = [39 100 204 308];

            % Create modelsd_2
            app.modelsd_2 = uitreenode(app.Tree3_2);
            app.modelsd_2.Text = 'models';

            % Create PredictorsLabel_2
            app.PredictorsLabel_2 = uilabel(app.ManualPanel);
            app.PredictorsLabel_2.FontName = 'Arial';
            app.PredictorsLabel_2.FontSize = 14;
            app.PredictorsLabel_2.FontAngle = 'italic';
            app.PredictorsLabel_2.Position = [53 472 239 31];
            app.PredictorsLabel_2.Text = 'Predictors';

            % Create Image9_2
            app.Image9_2 = uiimage(app.ManualPanel);
            app.Image9_2.ImageClickedFcn = createCallbackFcn(app, @Image9_2Clicked, true);
            app.Image9_2.Position = [8 16 23 45];
            app.Image9_2.ImageSource = 'left-arrow.png';

            % Create BacktoMainMenuLabel_10
            app.BacktoMainMenuLabel_10 = uilabel(app.ManualPanel);
            app.BacktoMainMenuLabel_10.FontName = 'Arial';
            app.BacktoMainMenuLabel_10.Position = [39 16 103 45];
            app.BacktoMainMenuLabel_10.Text = {'Back to Main Menu'; ''};

            % Create ModelMetricsPanel_2
            app.ModelMetricsPanel_2 = uipanel(app.ManualPanel);
            app.ModelMetricsPanel_2.BorderType = 'none';
            app.ModelMetricsPanel_2.Title = 'Model Metrics';
            app.ModelMetricsPanel_2.Visible = 'off';
            app.ModelMetricsPanel_2.BackgroundColor = [1 1 1];
            app.ModelMetricsPanel_2.FontName = 'Arial';
            app.ModelMetricsPanel_2.FontAngle = 'italic';
            app.ModelMetricsPanel_2.Position = [527 45 289 450];

            % Create ListBox_4
            app.ListBox_4 = uilistbox(app.ModelMetricsPanel_2);
            app.ListBox_4.Items = {};
            app.ListBox_4.Visible = 'off';
            app.ListBox_4.FontName = 'Arial';
            app.ListBox_4.FontSize = 14;
            app.ListBox_4.FontWeight = 'bold';
            app.ListBox_4.BackgroundColor = [0.502 0.502 0.502];
            app.ListBox_4.Position = [21 90 10 321];
            app.ListBox_4.Value = {};

            % Create Image8_4
            app.Image8_4 = uiimage(app.ModelMetricsPanel_2);
            app.Image8_4.Position = [31 344 40 38];
            app.Image8_4.ImageSource = 'output-onlinepngtools (18).png';

            % Create Image8_5
            app.Image8_5 = uiimage(app.ModelMetricsPanel_2);
            app.Image8_5.Position = [31 264 40 38];
            app.Image8_5.ImageSource = 'precision.png';

            % Create Image8_6
            app.Image8_6 = uiimage(app.ModelMetricsPanel_2);
            app.Image8_6.Position = [31 184 40 38];
            app.Image8_6.ImageSource = 'call-center.png';

            % Create AccuracyLabel_2
            app.AccuracyLabel_2 = uilabel(app.ModelMetricsPanel_2);
            app.AccuracyLabel_2.FontName = 'Arial';
            app.AccuracyLabel_2.FontSize = 14;
            app.AccuracyLabel_2.FontColor = [0.302 0.7451 0.9333];
            app.AccuracyLabel_2.Position = [94 353 65 22];
            app.AccuracyLabel_2.Text = 'Accuracy';

            % Create SpecificityLabel_2
            app.SpecificityLabel_2 = uilabel(app.ModelMetricsPanel_2);
            app.SpecificityLabel_2.FontName = 'Arial';
            app.SpecificityLabel_2.FontSize = 14;
            app.SpecificityLabel_2.Position = [94 275 176 22];
            app.SpecificityLabel_2.Text = 'Specificity';

            % Create SensitivityLabel_2
            app.SensitivityLabel_2 = uilabel(app.ModelMetricsPanel_2);
            app.SensitivityLabel_2.FontName = 'Arial';
            app.SensitivityLabel_2.FontSize = 14;
            app.SensitivityLabel_2.Position = [94 186 244 36];
            app.SensitivityLabel_2.Text = 'Sensitivity';

            % Create NaNLabel_5
            app.NaNLabel_5 = uilabel(app.ModelMetricsPanel_2);
            app.NaNLabel_5.FontName = 'Arial';
            app.NaNLabel_5.FontSize = 16;
            app.NaNLabel_5.FontColor = [0.302 0.7451 0.9333];
            app.NaNLabel_5.Position = [183 333 175 66];
            app.NaNLabel_5.Text = 'NaN';

            % Create NaNLabel_6
            app.NaNLabel_6 = uilabel(app.ModelMetricsPanel_2);
            app.NaNLabel_6.FontName = 'Arial';
            app.NaNLabel_6.FontSize = 16;
            app.NaNLabel_6.Position = [183 273 175 22];
            app.NaNLabel_6.Text = 'NaN';

            % Create NaNLabel_7
            app.NaNLabel_7 = uilabel(app.ModelMetricsPanel_2);
            app.NaNLabel_7.FontName = 'Arial';
            app.NaNLabel_7.FontSize = 16;
            app.NaNLabel_7.Position = [181 186 197 31];
            app.NaNLabel_7.Text = 'NaN';

            % Create Image15_2
            app.Image15_2 = uiimage(app.ModelMetricsPanel_2);
            app.Image15_2.Position = [31 100 40 38];
            app.Image15_2.ImageSource = 'analysis.png';

            % Create ResultLabel_2
            app.ResultLabel_2 = uilabel(app.ModelMetricsPanel_2);
            app.ResultLabel_2.FontName = 'Arial';
            app.ResultLabel_2.FontSize = 14;
            app.ResultLabel_2.Position = [94 108 65 22];
            app.ResultLabel_2.Text = 'Result';

            % Create NaNLabel_8
            app.NaNLabel_8 = uilabel(app.ModelMetricsPanel_2);
            app.NaNLabel_8.FontName = 'Arial';
            app.NaNLabel_8.FontSize = 16;
            app.NaNLabel_8.Position = [181 106 197 31];
            app.NaNLabel_8.Text = 'NaN';

            % Create About
            app.About = uitabgroup(app.GliomaIDHMutationDiagnosisToolUIFigure);
            app.About.Position = [172 -7 1338 680];

            % Create AcknowledgementsTab
            app.AcknowledgementsTab = uitab(app.About);
            app.AcknowledgementsTab.Title = 'Acknowledgements';
            app.AcknowledgementsTab.BackgroundColor = [1 1 1];

            % Create Label
            app.Label = uilabel(app.AcknowledgementsTab);
            app.Label.FontName = 'Arial Black';
            app.Label.FontSize = 16;
            app.Label.FontWeight = 'bold';
            app.Label.Position = [145 518 1476 63];
            app.Label.Text = {'This application software has been funded by TÜBÿTAK 1003 grant 216S432.'; ''};

            % Create Image4
            app.Image4 = uiimage(app.AcknowledgementsTab);
            app.Image4.Position = [477 125 127 131];
            app.Image4.ImageSource = 'Boÿaziçi_Üniversitesi_Logo.png';

            % Create Image4_2
            app.Image4_2 = uiimage(app.AcknowledgementsTab);
            app.Image4_2.ScaleMethod = 'fill';
            app.Image4_2.Position = [605 17 448 341];
            app.Image4_2.ImageSource = 'ACU.jpg';

            % Create ProjectTeamTab
            app.ProjectTeamTab = uitab(app.About);
            app.ProjectTeamTab.Title = 'Project Team';
            app.ProjectTeamTab.BackgroundColor = [1 1 1];

            % Create Image3
            app.Image3 = uiimage(app.ProjectTeamTab);
            app.Image3.Position = [-65 67 1439 588];
            app.Image3.ImageSource = '1.jpg';

            % Create PublicationsTab
            app.PublicationsTab = uitab(app.About);
            app.PublicationsTab.Title = 'Publications';
            app.PublicationsTab.BackgroundColor = [1 1 1];

            % Create PublicationsLabel
            app.PublicationsLabel = uilabel(app.PublicationsTab);
            app.PublicationsLabel.FontName = 'Arial';
            app.PublicationsLabel.FontSize = 25;
            app.PublicationsLabel.FontWeight = 'bold';
            app.PublicationsLabel.Position = [17 574 225 67];
            app.PublicationsLabel.Text = 'Publications';

            % Create Label_2
            app.Label_2 = uilabel(app.PublicationsTab);
            app.Label_2.Position = [92 519 1107 27];
            app.Label_2.Text = {'1.	Ozturk-Isik, E., Cengiz, S., Ozcan, A., Yakicier, C., A. Danyeli, E., Pamir, M. N., et al.. (2019). Identification of IDH and TERTp mutation status using 1H-MRS in 112 hemispheric diffuse gliomas. Journal of '; '        Magnetic Resonance Imaging.Retrieved from https://doi.org/10.1002/jmri.26964'};

            % Create Label_3
            app.Label_3 = uilabel(app.PublicationsTab);
            app.Label_3.Position = [92 475 1107 27];
            app.Label_3.Text = {'2.	Aras FK, Halilibrahimoglu H, Renkli N, Kaykayoglu A, Ozduman K, Ozturk-Isik E, Pamir N, Dincer A, Ozcan A. Investigating Distal ADC Distribution for Radiogenomic Classification of Gliomas via Machine '; '        Learning. European Society of Magnetic Resonance in Medicine and Biology Annual Conference. Virtual Meeting, September 30 ÿ October 2, 2020. (e-poster presentation)'};

            % Create Label_4
            app.Label_4 = uilabel(app.PublicationsTab);
            app.Label_4.Position = [92 431 1108 27];
            app.Label_4.Text = {'3.	Ozturk-Isik E, Sacli-Bilmez B, Danyeli AE, Ozcan A, Yakicier C, Pamir MN, Ozduman, Dincer A. The effect of Tumor Grade within IDH Wild-Type and  IDH Mutant Gliomas  Assessed  by  Proton  Magnetic '; '        Resonance Spectroscopy at 3T. International Society for Magnetic Resonance in Medicine. Virtual Meeting, August 8-14, 2020. (oral presentation)'};

            % Create Label_5
            app.Label_5 = uilabel(app.PublicationsTab);
            app.Label_5.Position = [94 387 1107 27];
            app.Label_5.Text = {'4.	Sacli-Bilmez B, Gursan A, Danyeli AE, Yakicier C, Pamir MN, Ozduman, Dincer A, Ozturk-Isik E.  MR  Spectroscopic  Differences  of  Low  and  High  Grade TERTp-only Gliomas. International Society for '; '        Magnetic Resonance in Medicine. Virtual Meeting, August 8-14, 2020. (e-poster)'};

            % Create Label_6
            app.Label_6 = uilabel(app.PublicationsTab);
            app.Label_6.Position = [92 343 1111 27];
            app.Label_6.Text = {'5.	Gursan A, Sahin H, Altun B, Talas AT, Hatay GH, Kocaturk O, Garipcan B, Dincer A, Ozturk-Isik E. An MRS Phantom Design with Multiple Compartments for Mimicking IDH Mutant  and IDH Wild-Type Brain '; '        Tumors. European Society of Magnetic Resonance in Medicine and Biology Annual Conference. Rotterdam, Netherlands, October 3-5, 2019. (e-poster)'};

            % Create Label_7
            app.Label_7 = uilabel(app.PublicationsTab);
            app.Label_7.Position = [94 299 1110 27];
            app.Label_7.Text = {'6.	Gursan A, Hatay GH, Yakcer C, Pamir MN, Ozduman K, Dincer A, Ozturk-Isik E. Comparison of MEGA-PRESS and Short Echo Time PRESS on Classification of IDH Mutation  Using  Machine Learning at '; '        3T. International Society for Magnetic Resonance in Medicine. Montreal, Canada, May 11-16, 2019. (digital poster)'};

            % Create Label_8
            app.Label_8 = uilabel(app.PublicationsTab);
            app.Label_8.Position = [94 255 1112 27];
            app.Label_8.Text = {'7.	Halilibrahimoglu H, Polat K, Keskin S, Aslan O, Genc O, Ozduman K, Yakicier C, Ozturk-Isik E, Pamir MN, Dincer A, Ozcan A. Testing  Machine  Learning  Algorithms  using  Anisotropy  Indices  of  Normal '; '        Appearing White Matter as Predictors of Molecular Group of Gliomas. International Society for Magnetic Resonance in Medicine. Montreal, Canada, May 11-16, 2019. (digital poster)'};

            % Create Label_9
            app.Label_9 = uilabel(app.PublicationsTab);
            app.Label_9.Position = [94 211 1109 27];
            app.Label_9.Text = {'8.	Ozturk-Isik E, Cengiz S, Ozcan A, Yakicier C, Pamir MN, Ozduman K, and Dincer A. Magnetic Resonance Spectroscopic  Differences  of  Diffuse  Glioma  Groups  Classified  by ÿDH  and TERT Promoter'; '        Mutations at 3T. International Society for Magnetic Resonance in Medicine. Paris, France, June 16-21, 2018. (oral presentation)'};

            % Create Label_10
            app.Label_10 = uilabel(app.PublicationsTab);
            app.Label_10.Position = [94 166 1117 27];
            app.Label_10.Text = {'9.	Ozturk-Isik E, Cengiz S, Ozduman K, Ozcan A, Yakicier C, Pamir MN, Dincer A. Prediction of IDH-Mutation Status of Diffuse-Gliomas Based on Short- Echo Time Magnetic Resonance Spectroscopy at 3T. '; '        International Society of Magnetic Resonance in Medicine Annual Conference, Honolulu, HI, USA, 22-27 April 2017. (e-poster)'};

            % Create MassSpectroscopy
            app.MassSpectroscopy = uitabgroup(app.GliomaIDHMutationDiagnosisToolUIFigure);
            app.MassSpectroscopy.Visible = 'off';
            app.MassSpectroscopy.Position = [172 -8 1359 682];

            % Create MassSpectroscopyTab
            app.MassSpectroscopyTab = uitab(app.MassSpectroscopy);
            app.MassSpectroscopyTab.Title = 'Mass Spectroscopy';
            app.MassSpectroscopyTab.BackgroundColor = [1 1 1];
            app.MassSpectroscopyTab.Scrollable = 'on';

            % Create ManualEntryPan_2
            app.ManualEntryPan_2 = uipanel(app.MassSpectroscopyTab);
            app.ManualEntryPan_2.BorderType = 'none';
            app.ManualEntryPan_2.Visible = 'off';
            app.ManualEntryPan_2.BackgroundColor = [1 1 1];
            app.ManualEntryPan_2.FontWeight = 'bold';
            app.ManualEntryPan_2.Position = [417 58 467 493];

            % Create Classify_3
            app.Classify_3 = uibutton(app.ManualEntryPan_2, 'push');
            app.Classify_3.ButtonPushedFcn = createCallbackFcn(app, @Classify_3ButtonPushed, true);
            app.Classify_3.Icon = 'output-onlinepngtools (11).png';
            app.Classify_3.BackgroundColor = [0.251 0.3216 0.2];
            app.Classify_3.FontName = 'Arial';
            app.Classify_3.FontSize = 18;
            app.Classify_3.FontWeight = 'bold';
            app.Classify_3.FontColor = [0.902 0.902 0.902];
            app.Classify_3.Enable = 'off';
            app.Classify_3.Position = [172 45 178 45];
            app.Classify_3.Text = '';

            % Create EnterButton_3
            app.EnterButton_3 = uibutton(app.ManualEntryPan_2, 'push');
            app.EnterButton_3.ButtonPushedFcn = createCallbackFcn(app, @EnterButton_3Pushed, true);
            app.EnterButton_3.Icon = 'plus.png';
            app.EnterButton_3.BackgroundColor = [1 1 1];
            app.EnterButton_3.FontName = 'Arial';
            app.EnterButton_3.FontSize = 14;
            app.EnterButton_3.FontWeight = 'bold';
            app.EnterButton_3.Position = [349 428 111 50];
            app.EnterButton_3.Text = 'Enter';

            % Create MetaboliteMenuDropDown_3
            app.MetaboliteMenuDropDown_3 = uidropdown(app.ManualEntryPan_2);
            app.MetaboliteMenuDropDown_3.Items = {'Glyc', 'GSH', 'HG2', 'Ins', 'Lac', 'GPc_Pch', 'tNAA', 'tCR', 'Glx'};
            app.MetaboliteMenuDropDown_3.FontName = 'Arial';
            app.MetaboliteMenuDropDown_3.BackgroundColor = [1 1 1];
            app.MetaboliteMenuDropDown_3.Position = [119 438 153 26];
            app.MetaboliteMenuDropDown_3.Value = 'Glyc';

            % Create Image2_2
            app.Image2_2 = uiimage(app.ManualEntryPan_2);
            app.Image2_2.ImageClickedFcn = createCallbackFcn(app, @Image2_2Clicked, true);
            app.Image2_2.Position = [58 422 38 61];
            app.Image2_2.ImageSource = 'multiple-variable-lines-graphic.png';

            % Create EditField_3
            app.EditField_3 = uieditfield(app.ManualEntryPan_2, 'text');
            app.EditField_3.Position = [281 438 51 26];

            % Create ListBox_7
            app.ListBox_7 = uilistbox(app.ManualEntryPan_2);
            app.ListBox_7.Items = {};
            app.ListBox_7.FontName = 'Arial';
            app.ListBox_7.FontSize = 14;
            app.ListBox_7.FontWeight = 'bold';
            app.ListBox_7.Position = [271 100 201 305];
            app.ListBox_7.Value = {};

            % Create Tree3_3
            app.Tree3_3 = uitree(app.ManualEntryPan_2);
            app.Tree3_3.SelectionChangedFcn = createCallbackFcn(app, @Tree3_3SelectionChanged, true);
            app.Tree3_3.FontName = 'Bodoni MT';
            app.Tree3_3.Position = [46 99 204 308];

            % Create modelsd_3
            app.modelsd_3 = uitreenode(app.Tree3_3);
            app.modelsd_3.Text = 'models';

            % Create MetaboliteConcentrationEntryLabel_2
            app.MetaboliteConcentrationEntryLabel_2 = uilabel(app.ManualEntryPan_2);
            app.MetaboliteConcentrationEntryLabel_2.FontName = 'Arial';
            app.MetaboliteConcentrationEntryLabel_2.FontSize = 14;
            app.MetaboliteConcentrationEntryLabel_2.FontAngle = 'italic';
            app.MetaboliteConcentrationEntryLabel_2.Position = [60 471 239 31];
            app.MetaboliteConcentrationEntryLabel_2.Text = 'Metabolite Concentration Entry';

            % Create Image9_3
            app.Image9_3 = uiimage(app.ManualEntryPan_2);
            app.Image9_3.ImageClickedFcn = createCallbackFcn(app, @Image9_3Clicked, true);
            app.Image9_3.Position = [15 15 23 45];
            app.Image9_3.ImageSource = 'left-arrow.png';

            % Create BacktoMainMenuLabel_14
            app.BacktoMainMenuLabel_14 = uilabel(app.ManualEntryPan_2);
            app.BacktoMainMenuLabel_14.FontName = 'Arial';
            app.BacktoMainMenuLabel_14.Position = [46 15 103 45];
            app.BacktoMainMenuLabel_14.Text = {'Back to Main Menu'; ''};

            % Create ModelMetricsPanel_3
            app.ModelMetricsPanel_3 = uipanel(app.MassSpectroscopyTab);
            app.ModelMetricsPanel_3.BorderType = 'none';
            app.ModelMetricsPanel_3.Title = 'Model Metrics';
            app.ModelMetricsPanel_3.Visible = 'off';
            app.ModelMetricsPanel_3.BackgroundColor = [1 1 1];
            app.ModelMetricsPanel_3.FontName = 'Arial';
            app.ModelMetricsPanel_3.FontAngle = 'italic';
            app.ModelMetricsPanel_3.Position = [916 72 321 460];

            % Create ListBox_8
            app.ListBox_8 = uilistbox(app.ModelMetricsPanel_3);
            app.ListBox_8.Items = {};
            app.ListBox_8.Visible = 'off';
            app.ListBox_8.FontName = 'Arial';
            app.ListBox_8.FontSize = 14;
            app.ListBox_8.FontWeight = 'bold';
            app.ListBox_8.BackgroundColor = [0.502 0.502 0.502];
            app.ListBox_8.Position = [21 100 10 321];
            app.ListBox_8.Value = {};

            % Create Image8_7
            app.Image8_7 = uiimage(app.ModelMetricsPanel_3);
            app.Image8_7.Position = [31 354 40 38];
            app.Image8_7.ImageSource = 'output-onlinepngtools (18).png';

            % Create Image8_8
            app.Image8_8 = uiimage(app.ModelMetricsPanel_3);
            app.Image8_8.Position = [31 274 40 38];
            app.Image8_8.ImageSource = 'precision.png';

            % Create Image8_9
            app.Image8_9 = uiimage(app.ModelMetricsPanel_3);
            app.Image8_9.Position = [31 194 40 38];
            app.Image8_9.ImageSource = 'call-center.png';

            % Create AccuracyLabel_3
            app.AccuracyLabel_3 = uilabel(app.ModelMetricsPanel_3);
            app.AccuracyLabel_3.FontName = 'Arial';
            app.AccuracyLabel_3.FontSize = 14;
            app.AccuracyLabel_3.FontColor = [0.302 0.7451 0.9333];
            app.AccuracyLabel_3.Position = [94 363 65 22];
            app.AccuracyLabel_3.Text = 'Accuracy';

            % Create SpecificityLabel_3
            app.SpecificityLabel_3 = uilabel(app.ModelMetricsPanel_3);
            app.SpecificityLabel_3.FontName = 'Arial';
            app.SpecificityLabel_3.FontSize = 14;
            app.SpecificityLabel_3.Position = [94 285 176 22];
            app.SpecificityLabel_3.Text = 'Specificity';

            % Create SensitivityLabel_3
            app.SensitivityLabel_3 = uilabel(app.ModelMetricsPanel_3);
            app.SensitivityLabel_3.FontName = 'Arial';
            app.SensitivityLabel_3.FontSize = 14;
            app.SensitivityLabel_3.Position = [94 196 244 36];
            app.SensitivityLabel_3.Text = 'Sensitivity';

            % Create NaNLabel_9
            app.NaNLabel_9 = uilabel(app.ModelMetricsPanel_3);
            app.NaNLabel_9.FontName = 'Arial';
            app.NaNLabel_9.FontSize = 16;
            app.NaNLabel_9.FontColor = [0.302 0.7451 0.9333];
            app.NaNLabel_9.Position = [183 343 175 66];
            app.NaNLabel_9.Text = 'NaN';

            % Create NaNLabel_10
            app.NaNLabel_10 = uilabel(app.ModelMetricsPanel_3);
            app.NaNLabel_10.FontName = 'Arial';
            app.NaNLabel_10.FontSize = 16;
            app.NaNLabel_10.Position = [183 283 175 22];
            app.NaNLabel_10.Text = 'NaN';

            % Create NaNLabel_11
            app.NaNLabel_11 = uilabel(app.ModelMetricsPanel_3);
            app.NaNLabel_11.FontName = 'Arial';
            app.NaNLabel_11.FontSize = 16;
            app.NaNLabel_11.Position = [181 196 197 31];
            app.NaNLabel_11.Text = 'NaN';

            % Create Image15_3
            app.Image15_3 = uiimage(app.ModelMetricsPanel_3);
            app.Image15_3.ImageClickedFcn = createCallbackFcn(app, @Image15_3Clicked, true);
            app.Image15_3.Position = [31 110 40 38];
            app.Image15_3.ImageSource = 'analysis.png';

            % Create ResultLabel_3
            app.ResultLabel_3 = uilabel(app.ModelMetricsPanel_3);
            app.ResultLabel_3.FontName = 'Arial';
            app.ResultLabel_3.FontSize = 14;
            app.ResultLabel_3.Position = [94 118 65 22];
            app.ResultLabel_3.Text = 'Result';

            % Create NaNLabel_12
            app.NaNLabel_12 = uilabel(app.ModelMetricsPanel_3);
            app.NaNLabel_12.FontName = 'Arial';
            app.NaNLabel_12.FontSize = 16;
            app.NaNLabel_12.Position = [181 116 197 31];
            app.NaNLabel_12.Text = 'NaN';

            % Create MainMenuPanel_3
            app.MainMenuPanel_3 = uipanel(app.MassSpectroscopyTab);
            app.MainMenuPanel_3.ForegroundColor = [0.302 0.7451 0.9333];
            app.MainMenuPanel_3.BorderType = 'none';
            app.MainMenuPanel_3.TitlePosition = 'centertop';
            app.MainMenuPanel_3.Title = 'Main Menu';
            app.MainMenuPanel_3.BackgroundColor = [1 1 1];
            app.MainMenuPanel_3.FontName = 'Arial';
            app.MainMenuPanel_3.FontWeight = 'bold';
            app.MainMenuPanel_3.FontSize = 14;
            app.MainMenuPanel_3.Position = [522 72 332 460];

            % Create ManualEntryButton_2
            app.ManualEntryButton_2 = uibutton(app.MainMenuPanel_3, 'push');
            app.ManualEntryButton_2.ButtonPushedFcn = createCallbackFcn(app, @ManualEntryButton_2Pushed, true);
            app.ManualEntryButton_2.BackgroundColor = [1 1 1];
            app.ManualEntryButton_2.FontWeight = 'bold';
            app.ManualEntryButton_2.Position = [101 322 138 44];
            app.ManualEntryButton_2.Text = 'Manual Entry';

            % Create ExcelEntryButton_2
            app.ExcelEntryButton_2 = uibutton(app.MainMenuPanel_3, 'push');
            app.ExcelEntryButton_2.ButtonPushedFcn = createCallbackFcn(app, @ExcelEntryButton_2Pushed, true);
            app.ExcelEntryButton_2.BackgroundColor = [1 1 1];
            app.ExcelEntryButton_2.FontWeight = 'bold';
            app.ExcelEntryButton_2.Position = [101 271 138 36];
            app.ExcelEntryButton_2.Text = 'Excel Entry';

            % Create PlotsButton_3
            app.PlotsButton_3 = uibutton(app.MainMenuPanel_3, 'push');
            app.PlotsButton_3.ButtonPushedFcn = createCallbackFcn(app, @PlotsButton_3Pushed, true);
            app.PlotsButton_3.BackgroundColor = [0.4667 0.6745 0.1882];
            app.PlotsButton_3.FontWeight = 'bold';
            app.PlotsButton_3.FontColor = [1 1 1];
            app.PlotsButton_3.Position = [101 61 138 46];
            app.PlotsButton_3.Text = {'Plots'; ''};

            % Create ExcelEntryPanel_2
            app.ExcelEntryPanel_2 = uipanel(app.MassSpectroscopyTab);
            app.ExcelEntryPanel_2.BorderType = 'none';
            app.ExcelEntryPanel_2.Visible = 'off';
            app.ExcelEntryPanel_2.BackgroundColor = [1 1 1];
            app.ExcelEntryPanel_2.Position = [10 24 1327 596];

            % Create ButtonPanel_2
            app.ButtonPanel_2 = uipanel(app.ExcelEntryPanel_2);
            app.ButtonPanel_2.ForegroundColor = [0 1 0];
            app.ButtonPanel_2.BorderType = 'none';
            app.ButtonPanel_2.TitlePosition = 'centertop';
            app.ButtonPanel_2.Title = 'Excel Entry';
            app.ButtonPanel_2.BackgroundColor = [1 1 1];
            app.ButtonPanel_2.FontWeight = 'bold';
            app.ButtonPanel_2.Position = [513 35 252 489];

            % Create progressbar_2
            app.progressbar_2 = uiaxes(app.ButtonPanel_2);
            app.progressbar_2.DataAspectRatio = [1 1 1];
            app.progressbar_2.XTick = [];
            app.progressbar_2.YTick = [];
            app.progressbar_2.Visible = 'off';
            app.progressbar_2.BackgroundColor = [1 1 1];
            app.progressbar_2.Position = [68 262 127 35];

            % Create LoadButton_7
            app.LoadButton_7 = uibutton(app.ButtonPanel_2, 'push');
            app.LoadButton_7.ButtonPushedFcn = createCallbackFcn(app, @LoadButton_7Pushed, true);
            app.LoadButton_7.BackgroundColor = [0.502 0.502 0.502];
            app.LoadButton_7.FontName = 'Arial';
            app.LoadButton_7.FontWeight = 'bold';
            app.LoadButton_7.FontColor = [1 1 1];
            app.LoadButton_7.Position = [76 413 100 34];
            app.LoadButton_7.Text = 'Load';

            % Create ClassifyButton_4
            app.ClassifyButton_4 = uibutton(app.ButtonPanel_2, 'push');
            app.ClassifyButton_4.ButtonPushedFcn = createCallbackFcn(app, @ClassifyButton_4Pushed, true);
            app.ClassifyButton_4.BackgroundColor = [0.502 0.502 0.502];
            app.ClassifyButton_4.FontName = 'Arial';
            app.ClassifyButton_4.FontWeight = 'bold';
            app.ClassifyButton_4.FontColor = [1 1 1];
            app.ClassifyButton_4.Position = [76 346 100 35];
            app.ClassifyButton_4.Text = 'Classify';

            % Create ExportClassesButton_3
            app.ExportClassesButton_3 = uibutton(app.ButtonPanel_2, 'push');
            app.ExportClassesButton_3.ButtonPushedFcn = createCallbackFcn(app, @ExportClassesButton_3Pushed, true);
            app.ExportClassesButton_3.BackgroundColor = [0.1451 0.5529 0.7294];
            app.ExportClassesButton_3.FontWeight = 'bold';
            app.ExportClassesButton_3.FontColor = [1 1 1];
            app.ExportClassesButton_3.Position = [76 59 102 38];
            app.ExportClassesButton_3.Text = 'Export Classes';

            % Create Image10_2
            app.Image10_2 = uiimage(app.ButtonPanel_2);
            app.Image10_2.ImageClickedFcn = createCallbackFcn(app, @Image10_2Clicked, true);
            app.Image10_2.Position = [15 9 28 22];
            app.Image10_2.ImageSource = 'left-arrow.png';

            % Create BacktoMainMenuLabel_15
            app.BacktoMainMenuLabel_15 = uilabel(app.ButtonPanel_2);
            app.BacktoMainMenuLabel_15.FontName = 'Arial';
            app.BacktoMainMenuLabel_15.Position = [48 4 103 35];
            app.BacktoMainMenuLabel_15.Text = 'Back to Main Menu';

            % Create ProcessingLabel_2
            app.ProcessingLabel_2 = uilabel(app.ButtonPanel_2);
            app.ProcessingLabel_2.FontSize = 15;
            app.ProcessingLabel_2.FontWeight = 'bold';
            app.ProcessingLabel_2.FontColor = [1 1 1];
            app.ProcessingLabel_2.Visible = 'off';
            app.ProcessingLabel_2.Position = [58 300 139 27];
            app.ProcessingLabel_2.Text = 'Processing..';

            % Create ModelsListBox_5Label
            app.ModelsListBox_5Label = uilabel(app.ButtonPanel_2);
            app.ModelsListBox_5Label.HorizontalAlignment = 'right';
            app.ModelsListBox_5Label.FontWeight = 'bold';
            app.ModelsListBox_5Label.FontColor = [1 1 1];
            app.ModelsListBox_5Label.Position = [1 224 47 22];
            app.ModelsListBox_5Label.Text = 'Models';

            % Create ModelsListBox_5
            app.ModelsListBox_5 = uilistbox(app.ButtonPanel_2);
            app.ModelsListBox_5.Items = {};
            app.ModelsListBox_5.ValueChangedFcn = createCallbackFcn(app, @ModelsListBox_5ValueChanged, true);
            app.ModelsListBox_5.FontWeight = 'bold';
            app.ModelsListBox_5.Position = [63 115 190 133];
            app.ModelsListBox_5.Value = {};

            % Create LoadButton_8
            app.LoadButton_8 = uibutton(app.ButtonPanel_2, 'push');
            app.LoadButton_8.BackgroundColor = [0.502 0.502 0.502];
            app.LoadButton_8.FontName = 'Arial';
            app.LoadButton_8.FontWeight = 'bold';
            app.LoadButton_8.FontColor = [1 1 1];
            app.LoadButton_8.Visible = 'off';
            app.LoadButton_8.Position = [96 393 52 20];
            app.LoadButton_8.Text = 'Load';

            % Create UITableExcelEntry_2
            app.UITableExcelEntry_2 = uitable(app.ExcelEntryPanel_2);
            app.UITableExcelEntry_2.ColumnName = {''};
            app.UITableExcelEntry_2.RowName = {};
            app.UITableExcelEntry_2.CellSelectionCallback = createCallbackFcn(app, @UITableExcelEntry_2CellSelection, true);
            app.UITableExcelEntry_2.Visible = 'off';
            app.UITableExcelEntry_2.FontName = 'Arial';
            app.UITableExcelEntry_2.Position = [268 88 979 416];

            % Create Class1Label_3
            app.Class1Label_3 = uilabel(app.ExcelEntryPanel_2);
            app.Class1Label_3.FontName = 'Arial';
            app.Class1Label_3.FontWeight = 'bold';
            app.Class1Label_3.FontAngle = 'italic';
            app.Class1Label_3.FontColor = [0 1 0];
            app.Class1Label_3.Position = [240 43 270 22];
            app.Class1Label_3.Text = '*Class1';

            % Create Class2Label_3
            app.Class2Label_3 = uilabel(app.ExcelEntryPanel_2);
            app.Class2Label_3.FontName = 'Arial';
            app.Class2Label_3.FontWeight = 'bold';
            app.Class2Label_3.FontAngle = 'italic';
            app.Class2Label_3.FontColor = [0 0 1];
            app.Class2Label_3.Position = [240 23 271 22];
            app.Class2Label_3.Text = '*Class2';

            % Create PlotsPanel_2
            app.PlotsPanel_2 = uipanel(app.MassSpectroscopyTab);
            app.PlotsPanel_2.BorderType = 'none';
            app.PlotsPanel_2.TitlePosition = 'centertop';
            app.PlotsPanel_2.Visible = 'off';
            app.PlotsPanel_2.BackgroundColor = [0.502 0.502 0.502];
            app.PlotsPanel_2.Position = [10 28 1227 563];

            % Create PlotsMenuPanel_2
            app.PlotsMenuPanel_2 = uipanel(app.PlotsPanel_2);
            app.PlotsMenuPanel_2.ForegroundColor = [1 1 1];
            app.PlotsMenuPanel_2.BorderType = 'none';
            app.PlotsMenuPanel_2.TitlePosition = 'centertop';
            app.PlotsMenuPanel_2.Title = 'Plots Menu';
            app.PlotsMenuPanel_2.BackgroundColor = [0.502 0.502 0.502];
            app.PlotsMenuPanel_2.FontWeight = 'bold';
            app.PlotsMenuPanel_2.Position = [501 79 257 452];

            % Create ModelPlots_2
            app.ModelPlots_2 = uibutton(app.PlotsMenuPanel_2, 'push');
            app.ModelPlots_2.BackgroundColor = [0.502 0.502 0.502];
            app.ModelPlots_2.FontWeight = 'bold';
            app.ModelPlots_2.FontColor = [1 1 1];
            app.ModelPlots_2.Position = [77 267 100 46];
            app.ModelPlots_2.Text = 'Model Plots';

            % Create LCMODELPLOTS_2
            app.LCMODELPLOTS_2 = uibutton(app.PlotsMenuPanel_2, 'push');
            app.LCMODELPLOTS_2.BackgroundColor = [0.502 0.502 0.502];
            app.LCMODELPLOTS_2.FontWeight = 'bold';
            app.LCMODELPLOTS_2.FontColor = [1 1 1];
            app.LCMODELPLOTS_2.Position = [76 89 102 46];
            app.LCMODELPLOTS_2.Text = 'LC Model Plots';

            % Create ExcelPlots_2
            app.ExcelPlots_2 = uibutton(app.PlotsMenuPanel_2, 'push');
            app.ExcelPlots_2.BackgroundColor = [0.502 0.502 0.502];
            app.ExcelPlots_2.FontWeight = 'bold';
            app.ExcelPlots_2.FontColor = [1 1 1];
            app.ExcelPlots_2.Position = [77 177 100 46];
            app.ExcelPlots_2.Text = 'Excel Plots';

            % Create Image11_2
            app.Image11_2 = uiimage(app.PlotsMenuPanel_2);
            app.Image11_2.Position = [8 400 20 23];
            app.Image11_2.ImageSource = 'left-arrow.png';

            % Create BacktoMainMenuLabel_16
            app.BacktoMainMenuLabel_16 = uilabel(app.PlotsMenuPanel_2);
            app.BacktoMainMenuLabel_16.FontColor = [1 1 1];
            app.BacktoMainMenuLabel_16.Position = [37 401 113 22];
            app.BacktoMainMenuLabel_16.Text = 'Back to Main Menu';

            % Create plottingpanels1_2
            app.plottingpanels1_2 = uipanel(app.PlotsPanel_2);
            app.plottingpanels1_2.BorderType = 'none';
            app.plottingpanels1_2.BackgroundColor = [0.502 0.502 0.502];
            app.plottingpanels1_2.Position = [15 50 454 500];

            % Create plottingpanels2_2
            app.plottingpanels2_2 = uipanel(app.PlotsPanel_2);
            app.plottingpanels2_2.BorderType = 'none';
            app.plottingpanels2_2.Visible = 'off';
            app.plottingpanels2_2.BackgroundColor = [0.502 0.502 0.502];
            app.plottingpanels2_2.Position = [386 50 826 497];

            % Create ModelPlotsPanel_2
            app.ModelPlotsPanel_2 = uipanel(app.PlotsPanel_2);
            app.ModelPlotsPanel_2.ForegroundColor = [1 1 1];
            app.ModelPlotsPanel_2.BorderType = 'none';
            app.ModelPlotsPanel_2.TitlePosition = 'centertop';
            app.ModelPlotsPanel_2.Title = 'Model Plots';
            app.ModelPlotsPanel_2.Visible = 'off';
            app.ModelPlotsPanel_2.BackgroundColor = [0.502 0.502 0.502];
            app.ModelPlotsPanel_2.Position = [503 88 237 439];

            % Create RefreshButton_4
            app.RefreshButton_4 = uibutton(app.ModelPlotsPanel_2, 'push');
            app.RefreshButton_4.BackgroundColor = [0.4549 0.902 0.4235];
            app.RefreshButton_4.FontWeight = 'bold';
            app.RefreshButton_4.Position = [25 61 87 39];
            app.RefreshButton_4.Text = 'Refresh';

            % Create PlotButton_6
            app.PlotButton_6 = uibutton(app.ModelPlotsPanel_2, 'push');
            app.PlotButton_6.BackgroundColor = [0.6 0.8549 0.8784];
            app.PlotButton_6.FontWeight = 'bold';
            app.PlotButton_6.Position = [131 61 91 39];
            app.PlotButton_6.Text = 'Plot';

            % Create ModelsListBox_6Label
            app.ModelsListBox_6Label = uilabel(app.ModelPlotsPanel_2);
            app.ModelsListBox_6Label.BackgroundColor = [0.502 0.502 0.502];
            app.ModelsListBox_6Label.HorizontalAlignment = 'right';
            app.ModelsListBox_6Label.FontColor = [1 1 1];
            app.ModelsListBox_6Label.Position = [96 377 42 22];
            app.ModelsListBox_6Label.Text = 'Models';

            % Create ModelsListBox_6
            app.ModelsListBox_6 = uilistbox(app.ModelPlotsPanel_2);
            app.ModelsListBox_6.Items = {};
            app.ModelsListBox_6.FontColor = [1 1 1];
            app.ModelsListBox_6.BackgroundColor = [0.502 0.502 0.502];
            app.ModelsListBox_6.Position = [25 169 197 209];
            app.ModelsListBox_6.Value = {};

            % Create Image12_3
            app.Image12_3 = uiimage(app.ModelPlotsPanel_2);
            app.Image12_3.Position = [26 23 27 21];
            app.Image12_3.ImageSource = 'left-arrow.png';

            % Create Image12_4
            app.Image12_4 = uiimage(app.ModelPlotsPanel_2);
            app.Image12_4.Position = [25 3 28 21];
            app.Image12_4.ImageSource = 'left-arrow.png';

            % Create BacktoMainMenuLabel_17
            app.BacktoMainMenuLabel_17 = uilabel(app.ModelPlotsPanel_2);
            app.BacktoMainMenuLabel_17.FontColor = [1 1 1];
            app.BacktoMainMenuLabel_17.Position = [63 23 103 22];
            app.BacktoMainMenuLabel_17.Text = 'Back to Main Menu';

            % Create BacktopreviousMenuLabel_2
            app.BacktopreviousMenuLabel_2 = uilabel(app.ModelPlotsPanel_2);
            app.BacktopreviousMenuLabel_2.FontColor = [1 1 1];
            app.BacktopreviousMenuLabel_2.Position = [63 3 123 22];
            app.BacktopreviousMenuLabel_2.Text = 'Back to previous Menu';

            % Create LCModelPlotsPanel_2
            app.LCModelPlotsPanel_2 = uipanel(app.PlotsPanel_2);
            app.LCModelPlotsPanel_2.ForegroundColor = [0 1 0];
            app.LCModelPlotsPanel_2.BorderType = 'none';
            app.LCModelPlotsPanel_2.TitlePosition = 'centertop';
            app.LCModelPlotsPanel_2.Title = 'LC Model Plots';
            app.LCModelPlotsPanel_2.Visible = 'off';
            app.LCModelPlotsPanel_2.BackgroundColor = [0.502 0.502 0.502];
            app.LCModelPlotsPanel_2.Position = [485 79 273 453];

            % Create LoadButton_9
            app.LoadButton_9 = uibutton(app.LCModelPlotsPanel_2, 'push');
            app.LoadButton_9.BackgroundColor = [0.302 0.7451 0.9333];
            app.LoadButton_9.FontWeight = 'bold';
            app.LoadButton_9.Position = [80 336 100 39];
            app.LoadButton_9.Text = 'Load';

            % Create PlotButton_7
            app.PlotButton_7 = uibutton(app.LCModelPlotsPanel_2, 'push');
            app.PlotButton_7.BackgroundColor = [0.502 0.502 0.502];
            app.PlotButton_7.FontWeight = 'bold';
            app.PlotButton_7.FontColor = [1 1 1];
            app.PlotButton_7.Position = [80 250 100 39];
            app.PlotButton_7.Text = 'Plot';

            % Create Image13_3
            app.Image13_3 = uiimage(app.LCModelPlotsPanel_2);
            app.Image13_3.Position = [49 70 28 21];
            app.Image13_3.ImageSource = 'left-arrow.png';

            % Create Image13_4
            app.Image13_4 = uiimage(app.LCModelPlotsPanel_2);
            app.Image13_4.Position = [26 50 71 21];
            app.Image13_4.ImageSource = 'left-arrow.png';

            % Create BacktoMainMenuLabel_18
            app.BacktoMainMenuLabel_18 = uilabel(app.LCModelPlotsPanel_2);
            app.BacktoMainMenuLabel_18.FontColor = [1 1 1];
            app.BacktoMainMenuLabel_18.Position = [86 70 103 22];
            app.BacktoMainMenuLabel_18.Text = 'Back to Main Menu';

            % Create BacktoPreviousMenuLabel_3
            app.BacktoPreviousMenuLabel_3 = uilabel(app.LCModelPlotsPanel_2);
            app.BacktoPreviousMenuLabel_3.FontColor = [1 1 1];
            app.BacktoPreviousMenuLabel_3.Position = [86 50 124 22];
            app.BacktoPreviousMenuLabel_3.Text = 'Back to Previous Menu';

            % Create MetabolitesListBox_2Label
            app.MetabolitesListBox_2Label = uilabel(app.LCModelPlotsPanel_2);
            app.MetabolitesListBox_2Label.HorizontalAlignment = 'right';
            app.MetabolitesListBox_2Label.FontColor = [1 1 1];
            app.MetabolitesListBox_2Label.Position = [5 209 63 22];
            app.MetabolitesListBox_2Label.Text = 'Metabolites';

            % Create MetabolitesListBox_2
            app.MetabolitesListBox_2 = uilistbox(app.LCModelPlotsPanel_2);
            app.MetabolitesListBox_2.Items = {};
            app.MetabolitesListBox_2.Multiselect = 'on';
            app.MetabolitesListBox_2.FontWeight = 'bold';
            app.MetabolitesListBox_2.FontColor = [1 1 1];
            app.MetabolitesListBox_2.BackgroundColor = [0.502 0.502 0.502];
            app.MetabolitesListBox_2.Position = [76 99 107 134];
            app.MetabolitesListBox_2.Value = {};

            % Create ExcelPlotPanel_2
            app.ExcelPlotPanel_2 = uipanel(app.PlotsPanel_2);
            app.ExcelPlotPanel_2.ForegroundColor = [1 1 1];
            app.ExcelPlotPanel_2.BorderType = 'none';
            app.ExcelPlotPanel_2.TitlePosition = 'centertop';
            app.ExcelPlotPanel_2.Title = 'Excel Plot';
            app.ExcelPlotPanel_2.Visible = 'off';
            app.ExcelPlotPanel_2.BackgroundColor = [0.502 0.502 0.502];
            app.ExcelPlotPanel_2.FontWeight = 'bold';
            app.ExcelPlotPanel_2.Position = [15 19 1225 541];

            % Create TabGroup3_2
            app.TabGroup3_2 = uitabgroup(app.ExcelPlotPanel_2);
            app.TabGroup3_2.Position = [1 0 1225 516];

            % Create DataTab_2
            app.DataTab_2 = uitab(app.TabGroup3_2);
            app.DataTab_2.Title = 'Data';
            app.DataTab_2.BackgroundColor = [1 1 1];

            % Create LoadButton_10
            app.LoadButton_10 = uibutton(app.DataTab_2, 'push');
            app.LoadButton_10.BackgroundColor = [1 1 1];
            app.LoadButton_10.Position = [17 406 154 44];
            app.LoadButton_10.Text = 'Load';

            % Create UITable4_2
            app.UITable4_2 = uitable(app.DataTab_2);
            app.UITable4_2.ColumnName = {'Column 1'; 'Column 2'; 'Column 3'; 'Column 4'};
            app.UITable4_2.RowName = {};
            app.UITable4_2.Position = [204 48 974 434];

            % Create AssignButton_2
            app.AssignButton_2 = uibutton(app.DataTab_2, 'push');
            app.AssignButton_2.BackgroundColor = [1 1 1];
            app.AssignButton_2.Position = [17 63 162 43];
            app.AssignButton_2.Text = 'Assign';

            % Create ListBox_5Label_2
            app.ListBox_5Label_2 = uilabel(app.DataTab_2);
            app.ListBox_5Label_2.HorizontalAlignment = 'right';
            app.ListBox_5Label_2.FontWeight = 'bold';
            app.ListBox_5Label_2.Position = [-2 368 67 22];
            app.ListBox_5Label_2.Text = 'Features';

            % Create ListBox_9
            app.ListBox_9 = uilistbox(app.DataTab_2);
            app.ListBox_9.Multiselect = 'on';
            app.ListBox_9.FontWeight = 'bold';
            app.ListBox_9.Position = [68 190 128 198];
            app.ListBox_9.Value = {'Item 1'};

            % Create GroupingFeatureLabel_2
            app.GroupingFeatureLabel_2 = uilabel(app.DataTab_2);
            app.GroupingFeatureLabel_2.HorizontalAlignment = 'right';
            app.GroupingFeatureLabel_2.FontWeight = 'bold';
            app.GroupingFeatureLabel_2.Position = [36 154 118 17];
            app.GroupingFeatureLabel_2.Text = 'Grouping Feature';

            % Create DropDown_2
            app.DropDown_2 = uidropdown(app.DataTab_2);
            app.DropDown_2.FontWeight = 'bold';
            app.DropDown_2.BackgroundColor = [1 1 1];
            app.DropDown_2.Position = [23 127 173 21];

            % Create Image24_2
            app.Image24_2 = uiimage(app.DataTab_2);
            app.Image24_2.Position = [52 9 19 16];
            app.Image24_2.ImageSource = 'left-arrow.png';

            % Create BacktoPlotsMenuLabel_2
            app.BacktoPlotsMenuLabel_2 = uilabel(app.DataTab_2);
            app.BacktoPlotsMenuLabel_2.Position = [75 9 105 17];
            app.BacktoPlotsMenuLabel_2.Text = 'Back to Plots Menu';

            % Create greenLabel_2
            app.greenLabel_2 = uilabel(app.DataTab_2);
            app.greenLabel_2.FontWeight = 'bold';
            app.greenLabel_2.FontAngle = 'italic';
            app.greenLabel_2.FontColor = [0 1 0];
            app.greenLabel_2.Position = [204 22 892 22];
            app.greenLabel_2.Text = '*green';

            % Create blueLabel_2
            app.blueLabel_2 = uilabel(app.DataTab_2);
            app.blueLabel_2.FontWeight = 'bold';
            app.blueLabel_2.FontAngle = 'italic';
            app.blueLabel_2.FontColor = [0 0 1];
            app.blueLabel_2.Position = [207 2 889 22];
            app.blueLabel_2.Text = '*blue';

            % Create PlotsTab_2
            app.PlotsTab_2 = uitab(app.TabGroup3_2);
            app.PlotsTab_2.Title = 'Plots';
            app.PlotsTab_2.BackgroundColor = [1 1 1];

            % Create excelpanel_2
            app.excelpanel_2 = uipanel(app.PlotsTab_2);
            app.excelpanel_2.BorderType = 'none';
            app.excelpanel_2.BackgroundColor = [1 1 1];
            app.excelpanel_2.Position = [17 2 825 473];

            % Create Plot_2
            app.Plot_2 = uibutton(app.PlotsTab_2, 'push');
            app.Plot_2.BackgroundColor = [0.4667 0.6745 0.1882];
            app.Plot_2.FontName = 'Arial Black';
            app.Plot_2.FontWeight = 'bold';
            app.Plot_2.FontColor = [1 1 1];
            app.Plot_2.Position = [946 34 172 39];
            app.Plot_2.Text = 'Plot';

            % Create PlotsButtonGroup_2
            app.PlotsButtonGroup_2 = uibuttongroup(app.PlotsTab_2);
            app.PlotsButtonGroup_2.TitlePosition = 'centertop';
            app.PlotsButtonGroup_2.Title = 'Plots';
            app.PlotsButtonGroup_2.BackgroundColor = [1 1 1];
            app.PlotsButtonGroup_2.Position = [852 89 360 280];

            % Create VariablePlotButton_3
            app.VariablePlotButton_3 = uitogglebutton(app.PlotsButtonGroup_2);
            app.VariablePlotButton_3.Text = 'Variable Plot';
            app.VariablePlotButton_3.Position = [11 227 100 22];
            app.VariablePlotButton_3.Value = true;

            % Create SpiderPlotButton_3
            app.SpiderPlotButton_3 = uitogglebutton(app.PlotsButtonGroup_2);
            app.SpiderPlotButton_3.Text = 'Spider Plot';
            app.SpiderPlotButton_3.Position = [11 196 100 22];

            % Create PCAPlotButton_2
            app.PCAPlotButton_2 = uitogglebutton(app.PlotsButtonGroup_2);
            app.PCAPlotButton_2.Text = 'PCA Plot';
            app.PCAPlotButton_2.Position = [11 165 100 22];

            % Create BoxPlotButton_3
            app.BoxPlotButton_3 = uitogglebutton(app.PlotsButtonGroup_2);
            app.BoxPlotButton_3.Text = 'Box Plot';
            app.BoxPlotButton_3.Position = [11 135 100 22];

            % Create BarPlotButton_2
            app.BarPlotButton_2 = uitogglebutton(app.PlotsButtonGroup_2);
            app.BarPlotButton_2.Text = 'Bar Plot';
            app.BarPlotButton_2.Position = [11 105 100 22];

            % Create LinePlotButton_2
            app.LinePlotButton_2 = uitogglebutton(app.PlotsButtonGroup_2);
            app.LinePlotButton_2.Text = 'Line Plot';
            app.LinePlotButton_2.Position = [11 75 100 22];

            % Create ConfidenceIntervalCheckBox_2
            app.ConfidenceIntervalCheckBox_2 = uicheckbox(app.PlotsButtonGroup_2);
            app.ConfidenceIntervalCheckBox_2.Text = 'Confidence Interval';
            app.ConfidenceIntervalCheckBox_2.Position = [160 75 121 22];
            app.ConfidenceIntervalCheckBox_2.Value = true;

            % Create ScatterCheckBox_2
            app.ScatterCheckBox_2 = uicheckbox(app.PlotsButtonGroup_2);
            app.ScatterCheckBox_2.Text = 'Scatter';
            app.ScatterCheckBox_2.Position = [291 73 59 22];

            % Create CI_2
            app.CI_2 = uieditfield(app.PlotsButtonGroup_2, 'numeric');
            app.CI_2.Limits = [0 1];
            app.CI_2.Position = [114 74 33 23];
            app.CI_2.Value = 0.95;

            % Create MergeCheckBox_3
            app.MergeCheckBox_3 = uicheckbox(app.PlotsButtonGroup_2);
            app.MergeCheckBox_3.Text = 'Merge';
            app.MergeCheckBox_3.Position = [125 195 54 22];

            % Create CompactCheckBox_2
            app.CompactCheckBox_2 = uicheckbox(app.PlotsButtonGroup_2);
            app.CompactCheckBox_2.Text = 'Compact';
            app.CompactCheckBox_2.Position = [125 134 70 23];

            % Create PCDimensionSpinner_2Label
            app.PCDimensionSpinner_2Label = uilabel(app.PlotsButtonGroup_2);
            app.PCDimensionSpinner_2Label.HorizontalAlignment = 'right';
            app.PCDimensionSpinner_2Label.Position = [178 164 88 22];
            app.PCDimensionSpinner_2Label.Text = 'PC Dimension';

            % Create PCDimensionSpinner_2
            app.PCDimensionSpinner_2 = uispinner(app.PlotsButtonGroup_2);
            app.PCDimensionSpinner_2.Limits = [2 3];
            app.PCDimensionSpinner_2.Position = [125 164 54 22];
            app.PCDimensionSpinner_2.Value = 2;

            % Create Feature1DropDown_2Label
            app.Feature1DropDown_2Label = uilabel(app.PlotsTab_2);
            app.Feature1DropDown_2Label.BackgroundColor = [1 1 1];
            app.Feature1DropDown_2Label.HorizontalAlignment = 'right';
            app.Feature1DropDown_2Label.Position = [868 422 55 22];
            app.Feature1DropDown_2Label.Text = 'Feature 1';

            % Create Feature1DropDown_2
            app.Feature1DropDown_2 = uidropdown(app.PlotsTab_2);
            app.Feature1DropDown_2.BackgroundColor = [1 1 1];
            app.Feature1DropDown_2.Position = [938 422 264 22];

            % Create Feature2DropDown_2Label
            app.Feature2DropDown_2Label = uilabel(app.PlotsTab_2);
            app.Feature2DropDown_2Label.BackgroundColor = [1 1 1];
            app.Feature2DropDown_2Label.HorizontalAlignment = 'right';
            app.Feature2DropDown_2Label.Position = [868 391 55 22];
            app.Feature2DropDown_2Label.Text = 'Feature 2';

            % Create Feature2DropDown_2
            app.Feature2DropDown_2 = uidropdown(app.PlotsTab_2);
            app.Feature2DropDown_2.BackgroundColor = [1 1 1];
            app.Feature2DropDown_2.Position = [938 391 268 22];

            % Create ResultsPanel_2
            app.ResultsPanel_2 = uipanel(app.MassSpectroscopyTab);
            app.ResultsPanel_2.ForegroundColor = [0 1 0];
            app.ResultsPanel_2.BorderType = 'none';
            app.ResultsPanel_2.TitlePosition = 'centertop';
            app.ResultsPanel_2.Title = 'Results';
            app.ResultsPanel_2.Visible = 'off';
            app.ResultsPanel_2.BackgroundColor = [0.502 0.502 0.502];
            app.ResultsPanel_2.FontWeight = 'bold';
            app.ResultsPanel_2.Position = [26 67 395 462];

            % Create Image26
            app.Image26 = uiimage(app.GliomaIDHMutationDiagnosisToolUIFigure);
            app.Image26.ImageClickedFcn = createCallbackFcn(app, @Image26Clicked, true);
            app.Image26.Position = [11 105 51 40];
            app.Image26.ImageSource = 'manual.png';

            % Create Image26_2
            app.Image26_2 = uiimage(app.GliomaIDHMutationDiagnosisToolUIFigure);
            app.Image26_2.Position = [11 40 51 36];
            app.Image26_2.ImageSource = 'file (1).png';

            % Create UserManualLabel
            app.UserManualLabel = uilabel(app.GliomaIDHMutationDiagnosisToolUIFigure);
            app.UserManualLabel.FontWeight = 'bold';
            app.UserManualLabel.Position = [70 112 79 22];
            app.UserManualLabel.Text = 'User Manual';

            % Create DocumentationLabel
            app.DocumentationLabel = uilabel(app.GliomaIDHMutationDiagnosisToolUIFigure);
            app.DocumentationLabel.FontWeight = 'bold';
            app.DocumentationLabel.Position = [70 47 95 22];
            app.DocumentationLabel.Text = 'Documentation';

            % Create Panel_6
            app.Panel_6 = uipanel(app.GliomaIDHMutationDiagnosisToolUIFigure);
            app.Panel_6.BorderType = 'none';
            app.Panel_6.BackgroundColor = [1 1 1];
            app.Panel_6.Position = [1 179 164 193];

            % Show the figure after all components are created
            app.GliomaIDHMutationDiagnosisToolUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = iris

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.GliomaIDHMutationDiagnosisToolUIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.GliomaIDHMutationDiagnosisToolUIFigure)
        end
    end
end